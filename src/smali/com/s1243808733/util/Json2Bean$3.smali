.class Lcom/s1243808733/util/Json2Bean$3;
.super Ljava/lang/Object;
.source "Json2Bean.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/util/Json2Bean;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final val$activity:Landroid/app/Activity;

.field final val$configurd:Lcom/s1243808733/util/Json2Java$Configurd;


# direct methods
.method constructor <init>(Lcom/s1243808733/util/Json2Java$Configurd;Landroid/app/Activity;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 278
    iput-object p1, p0, Lcom/s1243808733/util/Json2Bean$3;->val$configurd:Lcom/s1243808733/util/Json2Java$Configurd;

    iput-object p2, p0, Lcom/s1243808733/util/Json2Bean$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getItem()[Ljava/lang/String;
    .registers 14

    .line 281
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    const-string v1, "toString"

    const/4 v2, 0x6

    const-string v3, "int -> Integer"

    const/4 v4, 0x5

    const-string v5, "List<?> -> ?[]"

    const/4 v6, 0x4

    const-string v7, "public field"

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x7

    if-nez v0, :cond_2d

    .line 282
    new-array v0, v12, [Ljava/lang/String;

    const-string v12, "Add set method"

    aput-object v12, v0, v11

    const-string v11, "Add get method"

    aput-object v11, v0, v10

    const-string v10, "Sorting set and get methods"

    aput-object v10, v0, v9

    aput-object v7, v0, v8

    aput-object v5, v0, v6

    aput-object v3, v0, v4

    aput-object v1, v0, v2

    return-object v0

    .line 284
    :cond_2d
    new-array v0, v12, [Ljava/lang/String;

    const-string v12, "添加set方法"

    aput-object v12, v0, v11

    const-string v11, "添加get方法"

    aput-object v11, v0, v10

    const-string v10, "排序 set、get方法"

    aput-object v10, v0, v9

    aput-object v7, v0, v8

    aput-object v5, v0, v6

    aput-object v3, v0, v4

    aput-object v1, v0, v2

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 13

    .line 290
    iget-object p1, p0, Lcom/s1243808733/util/Json2Bean$3;->val$configurd:Lcom/s1243808733/util/Json2Java$Configurd;

    .line 291
    invoke-virtual {p1}, Lcom/s1243808733/util/Json2Java$Configurd;->isSetters()Z

    move-result p1

    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$3;->val$configurd:Lcom/s1243808733/util/Json2Java$Configurd;

    .line 292
    invoke-virtual {v0}, Lcom/s1243808733/util/Json2Java$Configurd;->isGetters()Z

    move-result v0

    iget-object v1, p0, Lcom/s1243808733/util/Json2Bean$3;->val$configurd:Lcom/s1243808733/util/Json2Java$Configurd;

    .line 293
    invoke-virtual {v1}, Lcom/s1243808733/util/Json2Java$Configurd;->isSortMethod()Z

    move-result v1

    iget-object v2, p0, Lcom/s1243808733/util/Json2Bean$3;->val$configurd:Lcom/s1243808733/util/Json2Java$Configurd;

    .line 294
    invoke-virtual {v2}, Lcom/s1243808733/util/Json2Java$Configurd;->isPublicField()Z

    move-result v2

    iget-object v3, p0, Lcom/s1243808733/util/Json2Bean$3;->val$configurd:Lcom/s1243808733/util/Json2Java$Configurd;

    .line 295
    invoke-virtual {v3}, Lcom/s1243808733/util/Json2Java$Configurd;->isUseArray()Z

    move-result v3

    iget-object v4, p0, Lcom/s1243808733/util/Json2Bean$3;->val$configurd:Lcom/s1243808733/util/Json2Java$Configurd;

    .line 296
    invoke-virtual {v4}, Lcom/s1243808733/util/Json2Java$Configurd;->isUseInteger()Z

    move-result v4

    iget-object v5, p0, Lcom/s1243808733/util/Json2Bean$3;->val$configurd:Lcom/s1243808733/util/Json2Java$Configurd;

    .line 297
    invoke-virtual {v5}, Lcom/s1243808733/util/Json2Java$Configurd;->isToString()Z

    move-result v5

    .line 299
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/s1243808733/util/Json2Bean$3;->val$activity:Landroid/app/Activity;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 300
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v7

    if-eqz v7, :cond_3a

    const-string v7, "配置"

    goto :goto_3c

    :cond_3a
    const-string v7, "Configure"

    :goto_3c
    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 301
    invoke-direct {p0}, Lcom/s1243808733/util/Json2Bean$3;->getItem()[Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/s1243808733/util/Json2Bean$3$1;

    invoke-direct {v8, p0}, Lcom/s1243808733/util/Json2Bean$3$1;-><init>(Lcom/s1243808733/util/Json2Bean$3;)V

    const/4 v9, 0x7

    new-array v9, v9, [Z

    const/4 v10, 0x0

    aput-boolean p1, v9, v10

    const/4 p1, 0x1

    aput-boolean v0, v9, p1

    const/4 p1, 0x2

    aput-boolean v1, v9, p1

    const/4 p1, 0x3

    aput-boolean v2, v9, p1

    const/4 p1, 0x4

    aput-boolean v3, v9, p1

    const/4 p1, 0x5

    aput-boolean v4, v9, p1

    const/4 p1, 0x6

    aput-boolean v5, v9, p1

    invoke-virtual {v6, v7, v9, v8}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 332
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
