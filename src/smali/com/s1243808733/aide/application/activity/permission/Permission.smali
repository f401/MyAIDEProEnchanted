.class public Lcom/s1243808733/aide/application/activity/permission/Permission;
.super Ljava/lang/Object;
.source "Permission.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/s1243808733/aide/application/activity/permission/Permission;",
        ">;"
    }
.end annotation


# instance fields
.field private describe:Ljava/lang/String;

.field private info:Landroid/content/pm/PermissionInfo;

.field private label:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private pm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;Ljava/lang/String;)V
    .registers 4

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/Permission;->pm:Landroid/content/pm/PackageManager;

    .line 17
    iput-object p2, p0, Lcom/s1243808733/aide/application/activity/permission/Permission;->name:Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    :try_start_8
    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/Permission;->info:Landroid/content/pm/PermissionInfo;
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_e} :catch_f

    goto :goto_10

    :catch_f
    move-exception p1

    :goto_10
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/s1243808733/aide/application/activity/permission/Permission;)I
    .registers 3

    .line 71
    invoke-virtual {p1}, Lcom/s1243808733/aide/application/activity/permission/Permission;->getLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/permission/Permission;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 6
    check-cast p1, Lcom/s1243808733/aide/application/activity/permission/Permission;

    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/application/activity/permission/Permission;->compareTo(Lcom/s1243808733/aide/application/activity/permission/Permission;)I

    move-result p1

    return p1
.end method

.method public getDescribe()Ljava/lang/String;
    .registers 3

    .line 58
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/Permission;->describe:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    .line 61
    :cond_5
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/Permission;->info:Landroid/content/pm/PermissionInfo;

    if-eqz v0, :cond_18

    .line 62
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/permission/Permission;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/PermissionInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 64
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/Permission;->describe:Ljava/lang/String;

    return-object v0

    .line 67
    :cond_18
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "没有描述"

    goto :goto_23

    :cond_21
    const-string v0, "No description"

    :goto_23
    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/Permission;->describe:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .registers 4

    .line 28
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/Permission;->label:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    .line 32
    :cond_5
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/Permission;->info:Landroid/content/pm/PermissionInfo;

    if-eqz v0, :cond_26

    .line 33
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/permission/Permission;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/PermissionInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 35
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 36
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/Permission;->label:Ljava/lang/String;

    return-object v0

    .line 41
    :cond_26
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/Permission;->name:Ljava/lang/String;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_3b

    .line 43
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/permission/Permission;->name:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/Permission;->label:Ljava/lang/String;

    return-object v0

    .line 46
    :cond_3b
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/Permission;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/Permission;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/Permission;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setDescribe(Ljava/lang/String;)V
    .registers 2

    .line 54
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/Permission;->describe:Ljava/lang/String;

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/Permission;->label:Ljava/lang/String;

    return-void
.end method
