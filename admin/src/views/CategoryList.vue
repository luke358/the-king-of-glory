<template>
  <div>
    <h1>分类列表</h1>
    <el-table :data="items">
      <el-table-column type="expand">
        <template slot-scope="scope">
          <el-table
            :data="scope.row.child"
            :show-header="false"
            style="width:100%"
          >
            <el-table-column width="400"></el-table-column>

            <el-table-column prop="name" width="300"></el-table-column>
            <el-table-column fixed="right">
              <template slot-scope="scope">
                <el-button
                  type="text"
                  size="small"
                  @click="$router.push(`/categories/edit/${scope.row._id}`)"
                  >编辑</el-button
                >
                <el-button type="text" size="small" @click="remove(scope.row)"
                  >删除</el-button
                >
              </template>
            </el-table-column>
          </el-table>
        </template>
      </el-table-column>
      <el-table-column prop="_id" label="序号" width="400" type="index">
      </el-table-column>
      <el-table-column prop="name" label="分类名称" width="300">
      </el-table-column>
      <el-table-column fixed="right" label="操作">
        <template slot-scope="scope">
          <el-button
            type="text"
            size="small"
            @click="$router.push(`/categories/edit/${scope.row._id}`)"
            >编辑</el-button
          >
          <el-button type="text" size="small" @click="remove(scope.row)"
            >删除</el-button
          >
        </template>
      </el-table-column>
    </el-table>
  </div>
</template>

<script>
export default {
  data() {
    return {
      items: []
    };
  },
  methods: {
    async fetch() {
      const res = await this.$http.get("rest/categories");
      this.items = res.data;
      // console.log(this.items);
    },
    async remove(row) {
      this.$confirm(`确定删除"${row.name}"?`, "提示", {
        confirmButtonText: "确定",
        cancelButtonText: "取消",
        type: "warning"
      }).then(async () => {
        const res = await this.$http.delete(`rest/categories/${row._id}`);
        this.$message({
          type: "success",
          message: "删除成功!"
        });
        this.fetch();
      });
    }
  },

  created() {
    this.fetch();
  }
};
</script>

<style></style>
