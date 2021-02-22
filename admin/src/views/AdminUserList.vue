<template>
  <div>
    <h1>管理员列表</h1>
    <el-card>
      <el-button type="primary" icon="el-icon-plus" @click="dialogVisible = true">添加用户</el-button>
      
      <el-table :data="items">
          <el-table-column prop="_id" label="ID" width="240"> </el-table-column>

          <el-table-column prop="username" label="用户名"> </el-table-column>

        <el-table-column label="权限等级" prop="level"></el-table-column>

          <el-table-column fixed="right" label="操作" width="180">
            <template slot-scope="scope">
              <el-button
                type="text"
                size="small"
                @click="edit(scope.row)"
                >编辑</el-button
              >
              <el-button type="text" size="small" @click="remove(scope.row)"
                >删除</el-button
              >
            </template>
          </el-table-column>
        </el-table>
    </el-card>
    
    <el-dialog
      :title="!this.user._id?'添加用户':'编辑用户'"
      :visible.sync="dialogVisible"
      width="50%"
      @closed="dialogClose"
    >
      <el-form label-width="80px">
        <el-form-item label="用户名">
          <el-input v-model="user.username"></el-input>
        </el-form-item>
        <el-form-item v-if="!this.user._id" label="权限等级">
          <el-input v-model="user.level"></el-input>
        </el-form-item>
        <el-form-item label="密码">
          <el-input v-model="user.password"></el-input>
        </el-form-item>
      </el-form>
      <span slot="footer" class="dialog-footer">
        <el-button @click="dialogVisible = false">取 消</el-button>
        <el-button type="primary" @click="handleUser">确 定</el-button>
      </span>
    </el-dialog>
  </div>
</template>

<script>
export default {
  data() {
    return {
      items: [],
        //数据
      user: {},
      dialogVisible:false
    };
  },
  methods: {
    async fetch() {
      const res = await this.$http.get("rest/admin_users");
      this.items = res.data;
    },
    // 删除用户
    async remove(row) {
      this.$confirm(`确定删除"${row.name}"?`, "提示", {
        confirmButtonText: "确定",
        cancelButtonText: "取消",
        type: "warning"
      }).then(async () => {
        const res = await this.$http.delete(`rest/admin_users/${row._id}`);
        this.$message({
          type: "success",
          message: "删除成功!"
        });
        this.fetch();
      });
    },
     //监听编辑用户按钮
    async edit(row) {
      this.id = row._id
      const res = await this.$http.get(`rest/admin_users/${this.id}`)
      this.user = res.data
      this.dialogVisible = true
    },
    dialogClose() {
      this.model = {}
    },
    async handleUser(){
    if (!this.user._id) {
        const res = await this.$http.post("rest/admin_users", this.user);
        if (!res) return
        this.$message.success('创建用户成功')
        this.fetch()
        this.dialogVisible = false
      } else {
        const res = await this.$http.put(`rest/admin_users/${this.id}`, this.user);
        if (!res) return
        this.$message.success('编辑用户成功')
        this.fetch()
        this.dialogVisible = false
      }
    }
  },

  created() {
    this.fetch();
  }
};
</script>

<style></style>
