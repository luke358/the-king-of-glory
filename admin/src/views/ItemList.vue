<template>
  <div>
    <h1>物品列表</h1>
    <el-card>
      <el-button type="primary" icon="el-icon-plus" @click="dialogVisible = true">添加物品</el-button>
      <el-table :data="items">
        <el-table-column prop="_id" label="ID" width="240"> </el-table-column>

        <el-table-column prop="name" label="物品名称"> </el-table-column>
        <!-- <el-table-column prop="icon" label="图标">
          <template slot-scope="scope">
            <img :src="scope.row.icon" alt="" style="height:3rem" />
          </template>
        </el-table-column> -->

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
    
    <!-- 对话框 -->
    <el-dialog
      :title="!this.formData._id?'添加物品':'编辑物品'"
      :visible.sync="dialogVisible"
      width="50%"
      @closed="dialogClose"
    >
      <el-form label-width="80px">
        <!-- 物品名称 -->
        <el-form-item label="物品名称">
          <el-input v-model="formData.name"></el-input>
        </el-form-item>
        <!-- 物品图标 -->
        <el-form-item label="物品图标">
          <el-upload
            class="avatar-uploader"
            :action="uploadUrl"
            :headers="getAuthHeaders()"
            :show-file-list="false"
            :on-success="res => $set(formData, 'icon', res.url)"
          >
            <img v-if="formData.icon" :src="formData.icon" class="avatar" />
            <i v-else class="el-icon-plus avatar-uploader-icon"></i>
          </el-upload>
        </el-form-item>
        <el-form-item label="星级">
          <el-rate show-score :max="3" v-model="formData.star"></el-rate>
        </el-form-item>
        <el-form-item label="物品简介">
          <el-input v-model="formData.desc"></el-input>
        </el-form-item>
        <el-form-item label="物品详情">
          <el-input v-model="formData.detail"></el-input>
        </el-form-item>
      </el-form>

      <span slot="footer" class="dialog-footer">
        <el-button @click="dialogVisible = false">取 消</el-button>
        <el-button type="primary" @click="handelItem">确 定</el-button>
      </span>
    </el-dialog>

  </div>
</template>

<script>
export default {
  data() {
    return {
      items: [],
      dialogVisible: false,
       // 添加表单数据
      formData: {},
    };
  },
  methods: {
    async fetch() {
      const res = await this.$http.get("rest/items");
      this.items = res.data;
    },
    async remove(row) {
      this.$confirm(`确定删除"${row.name}"?`, "提示", {
        confirmButtonText: "确定",
        cancelButtonText: "取消",
        type: "warning"
      }).then(async () => {
        const res = await this.$http.delete(`rest/items/${row._id}`);
        this.$message({
          type: "success",
          message: "删除成功!"
        });
        this.fetch();
      });
    },
    async handelItem(){
      console.log(this.formData)
      if (!this.formData._id) {
        const res = await this.$http.post("rest/items", this.formData);
        if (!res) return this.$message.error('装备添加失败')
        this.$message.success('装备添加成功')
        this.fetch()
        this.dialogVisible = false
      } else {
        const res = await this.$http.put(`rest/items/${this.id}`, this.formData);
        if (!res) return this.$message.error('装备编辑失败')
        this.$message.success('装备编辑成功')
        this.fetch()
        this.dialogVisible = false
      }
    },
    dialogClose() {
      this.formData = {}
    },
     //监听编辑物品按钮
    async edit(row) {
      this.id = row._id
      const res = await this.$http.get(`rest/items/${this.id}`);
      if (!res) return
      res.data.star = Number(res.data.star)
      this.formData = res.data
      this.dialogVisible = true
    },
  },

  created() {
    this.fetch();
  }
};
</script>

<style></style>
