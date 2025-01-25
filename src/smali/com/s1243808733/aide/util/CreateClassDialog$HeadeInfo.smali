.class Lcom/s1243808733/aide/util/CreateClassDialog$HeadeInfo;
.super Ljava/lang/Object;
.source "CreateClassDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/aide/util/CreateClassDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HeadeInfo"
.end annotation


# instance fields
.field public author:Ljava/lang/String;

.field public date:Ljava/lang/String;

.field public describe:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 845
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 852
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 853
    iget-object v1, p0, Lcom/s1243808733/aide/util/CreateClassDialog$HeadeInfo;->author:Ljava/lang/String;

    if-eqz v1, :cond_13

    .line 854
    const-string v1, "\n * @Author "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/s1243808733/aide/util/CreateClassDialog$HeadeInfo;->author:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 856
    :cond_13
    iget-object v1, p0, Lcom/s1243808733/aide/util/CreateClassDialog$HeadeInfo;->date:Ljava/lang/String;

    if-eqz v1, :cond_21

    .line 857
    const-string v1, "\n * @Date "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/s1243808733/aide/util/CreateClassDialog$HeadeInfo;->date:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 859
    :cond_21
    iget-object v1, p0, Lcom/s1243808733/aide/util/CreateClassDialog$HeadeInfo;->describe:Ljava/lang/String;

    invoke-static {v1}, Lcom/blankj/utilcode/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 860
    const-string v1, "\n * @Describe "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/s1243808733/aide/util/CreateClassDialog$HeadeInfo;->describe:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 863
    :cond_33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_48

    .line 864
    const/4 v1, 0x0

    const-string v2, "/**"

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 865
    const-string v1, "\n */"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 868
    :cond_48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
