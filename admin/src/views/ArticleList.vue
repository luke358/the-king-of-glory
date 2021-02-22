<template>
  <div>
    <h1>文章列表</h1>
    <el-card>
      <el-button type="primary" icon="el-icon-plus" @click="addArticle">添加文章</el-button>
      <el-table :data="
          items.slice((currentPage - 1) * PageSize, currentPage * PageSize)
        ">
        <el-table-column prop="_id" label="ID" width="240"> </el-table-column>

        <el-table-column prop="title" label="标题"> </el-table-column>

        <el-table-column fixed="right" label="操作" width="180">
          <template slot-scope="scope">
            <el-button
              type="text"
              size="small"
              @click="$router.push(`/articles/edit/${scope.row._id}`)"
              >编辑</el-button
            >
            <el-button type="text" size="small" @click="remove(scope.row)"
              >删除</el-button
            >
          </template>
        </el-table-column>
      </el-table>

      <div class="tabListPage">
        <el-pagination
          @size-change="handleSizeChange"
          @current-change="handleCurrentChange"
          :current-page="currentPage"
          :page-sizes="pageSizes"
          :page-size="PageSize"
          layout="total, sizes, prev, pager, next, jumper"
          :total="totalCount"
        >
        </el-pagination>
      </div>
    </el-card>
  </div>
</template>

<script>
export default {
  data() {
    return {
      items: [],
      currentPage: 1,
      totalCount: 1,
      pageSizes: [2, 5, 10, 15],
      PageSize: 5,
    };
  },
  methods: {
    async fetch() {
      const res = await this.$http.get("rest/articles");
      this.items = res.data;
      this.totalCount = res.data.length;
    },
    async remove(row) {
      this.$confirm(`确定删除文章"${row.title}"?`, "提示", {
        confirmButtonText: "确定",
        cancelButtonText: "取消",
        type: "warning"
      }).then(async () => {
        const res = await this.$http.delete(`rest/articles/${row._id}`);
        this.$message({
          type: "success",
          message: "删除成功!"
        });
        this.fetch();
      });
    },
     // 添加文章
    addArticle() {
      this.$router.push('/articles/create')
    },
  },

  created() {
    this.fetch();
  }
};
</script>

<style></style>
