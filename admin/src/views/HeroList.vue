<template>
  <div>
    <h1>英雄列表</h1>
    <el-card>
      <el-row>
        <el-col :span="6">
          <el-input  maxlength="8" clearable placeholder="请输入英雄名称" v-model="heroQuery"></el-input>
        </el-col>
        <el-col :span="3">
          <el-button style="margin-left:20px" type="primary" icon="el-icon-search" @click="searchHero">搜索</el-button>
        </el-col>
        <el-col :span="4" >
          <el-button type="primary" icon="el-icon-plus" @click="addHeroClick">添加英雄</el-button>
        </el-col>
      </el-row>
      <el-table
        :data="
          tableData.slice((currentPage - 1) * PageSize, currentPage * PageSize)
        "
      >
        <el-table-column prop="_id" label="ID" width="240"> </el-table-column>

        <el-table-column prop="name" label="英雄名称"> </el-table-column>
        <el-table-column prop="title" label="称号"> </el-table-column>
        <el-table-column prop="avatar" label="头像">
          <template slot-scope="scope">
            <img :src="scope.row.avatar" alt="" style="height:3rem" />
          </template>
        </el-table-column>

        <el-table-column fixed="right" label="操作" width="180">
          <template slot-scope="scope">
            <el-button
              type="text"
              size="small"
              @click="$router.push(`/heroes/edit/${scope.row._id}`)"
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
      tableData: [],
      currentPage: 1,
      totalCount: 1,
      pageSizes: [2, 5, 10, 15],
      PageSize: 5,
      heroQuery: ''
    };
  },
  methods: {
    searchHero(){

    },
    async fetch() {
      const res = await this.$http.get("rest/heroes");
      this.tableData = res.data;
      // console.log(this.items);
      this.totalCount = res.data.length;
    },
    async remove(row) {
      this.$confirm(`确定删除"${row.name}"?`, "提示", {
        confirmButtonText: "确定",
        cancelButtonText: "取消",
        type: "warning"
      }).then(async () => {
        const res = await this.$http.delete(`rest/heroes/${row._id}`);
        this.$message({
          type: "success",
          message: "删除成功!"
        });
        this.fetch();
      });
    },
    handleSizeChange(val) {
      // 改变每页显示的条数
      this.PageSize = val;
      // 注意：在改变每页显示的条数时，要将页码显示到第一页
      this.currentPage = 1;
    },
    // 显示第几页
    handleCurrentChange(val) {
      // 改变默认的页数
      this.currentPage = val;
    },
     // 添加英雄
    addHeroClick() {
      this.$router.push('/heroes/create')
    },
  },

  created() {
    this.fetch();
  }
};
</script>

<style></style>
