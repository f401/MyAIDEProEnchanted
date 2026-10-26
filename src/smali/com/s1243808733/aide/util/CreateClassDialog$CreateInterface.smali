.class Lcom/s1243808733/aide/util/CreateClassDialog$CreateInterface;
.super Lcom/s1243808733/aide/util/CreateClassDialog$CreateClass;
.source "CreateClassDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/aide/util/CreateClassDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CreateInterface"
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/util/CreateClassDialog;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/util/CreateClassDialog;)V
    .locals 0

    .line 490
    iput-object p1, p0, Lcom/s1243808733/aide/util/CreateClassDialog$CreateInterface;->this$0:Lcom/s1243808733/aide/util/CreateClassDialog;

    invoke-direct {p0}, Lcom/s1243808733/aide/util/CreateClassDialog$CreateClass;-><init>()V

    return-void
.end method


# virtual methods
.method public makeCode(Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;)Ljava/lang/String;
    .locals 4

    .line 494
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p1, Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "package "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";\n\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 496
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "public "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    iget-boolean v0, p1, Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;->abstractModifier:Z

    if-eqz v0, :cond_1

    const-string v0, "abstract "

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "interface "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;->className:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " {\n    \n    "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    iget-boolean v0, p1, Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;->isAddTag:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "public static final String TAG = \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\";\n    \n    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n    \n}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 495
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 497
    :cond_1
    const-string v0, ""

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_2
.end method
