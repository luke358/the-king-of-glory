<template>
	<div>
		<h1>广告位列表</h1>
		<el-card>
			<el-button type="primary" icon="el-icon-plus" @click="dialogVisible=true"
				>添加广告位</el-button
			>
			<el-table :data="items">
				<el-table-column prop="_id" label="ID" width="240"> </el-table-column>
				<el-table-column prop="name" label="名称"> </el-table-column>
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
      class="add-ad-dialog"
      :title="!this.model._id?'添加广告位':'编辑广告位'"
      :visible.sync="dialogVisible"
      @closed="dialogClose"
    >
      <el-form label-width="86px">
        <el-form-item label="广告位名称">
          <el-input v-model="model.name"></el-input>
        </el-form-item>

        <el-button type="primary" icon="el-icon-plus" size="itemssmall" @click="addAds">添加广告位信息</el-button>
        <el-row :gutter="20" type="flex" style="flex-wrap: wrap">
          <el-col v-for="(item,i) in model.items" :key="i" :span="12" class="skill-item">
            <el-card>
              <el-tag>广告位{{i+1}}</el-tag>
              <el-form-item label="图片:" label-width="80px">
                <el-upload
                class="avatar-uploader"
                :action="uploadUrl"
                :headers="getAuthHeaders()"
                :show-file-list="false"
                :on-success="res => $set(item, 'image', res.url)"
              >
                  <img class="ad-img" v-if="item.image" :src="item.image" />
                  <i v-else class="el-icon-plus avatar-uploader-icon"></i>
                </el-upload>
              </el-form-item>
              <el-form-item label="跳转链接:" label-width="80px">
                <el-input v-model="item.url"></el-input>
              </el-form-item>
              <el-button type="danger" @click="deleteAdInfo(i)">删除</el-button>
            </el-card>
          </el-col>
        </el-row>
      </el-form>

      <span slot="footer" class="dialog-footer">
        <el-button @click="dialogVisible = false">取 消</el-button>
        <el-button type="primary" @click="addHandle">确 定</el-button>
      </span>
    </el-dialog>
	</div>
</template>

<script>
export default {
	data() {
		return {
			items: [],
      dialogVisible:false,
      model: {
        items: []
      }
		};
	},
	methods: {
		async fetch() {
			const res = await this.$http.get("rest/ads");
			this.items = res.data;
		},
		async remove(row) {
			this.$confirm(`确定删除"${row.name}"?`, "提示", {
				confirmButtonText: "确定",
				cancelButtonText: "取消",
				type: "warning",
			}).then(async () => {
				const res = await this.$http.delete(`rest/ads/${row._id}`);
				this.$message({
					type: "success",
					message: "删除成功!",
				});
				this.fetch();
			});
		},
    async addHandle(){
      if (!this.model._id) {
        const res = await this.$http.post("rest/ads", this.model);
        if (!res) return
        this.$message.success('创建广告位成功')
        this.fetch()
        this.dialogVisible = false
      } else {
        const res = await this.$http.put(`rest/ads/${this.id}`, this.model); 
        if (!res) return
        this.$message.success('编辑成功')
        this.fetch()
        this.dialogVisible = false
      }
    },
    dialogClose() {
      this.model = { items: [] }
    },
    addAds(){
      this.model.items.push({})
    },
    deleteAdInfo(i){
       this.model.items.splice(i, 1)
    },
    //监听编辑广告位按钮
    async edit(row) {
      this.id = row._id
      const res = await this.$http.get(`rest/ads/${this.id}`);
      this.model = res.data
      this.dialogVisible = true
    },
	},

	created() {
		this.fetch();
	},
};
</script>

<style>
.ad-img {
  width: 280px;
  vertical-align: middle;
}
.el-tag {
  margin-bottom: 18px;
}
.el-card {
  padding: 10px 0;
}
.add-ad-dialog .el-dialog {
  width: 1000px;
}
</style>
