.class Lorg/apache/tools/ant/types/Permissions$MySM;
.super Ljava/lang/SecurityManager;
.source "Permissions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/types/Permissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySM"
.end annotation


# instance fields
.field final this$0:Lorg/apache/tools/ant/types/Permissions;


# direct methods
.method private constructor <init>(Lorg/apache/tools/ant/types/Permissions;)V
    .registers 2

    .line 180
    iput-object p1, p0, Lorg/apache/tools/ant/types/Permissions$MySM;->this$0:Lorg/apache/tools/ant/types/Permissions;

    invoke-direct {p0}, Ljava/lang/SecurityManager;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/tools/ant/types/Permissions;Lorg/apache/tools/ant/types/Permissions$1;)V
    .registers 3

    .line 180
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/Permissions$MySM;-><init>(Lorg/apache/tools/ant/types/Permissions;)V

    return-void
.end method

.method private checkRevoked(Ljava/security/Permission;)V
    .registers 4

    .line 233
    iget-object v0, p0, Lorg/apache/tools/ant/types/Permissions$MySM;->this$0:Lorg/apache/tools/ant/types/Permissions;

    invoke-static {v0}, Lorg/apache/tools/ant/types/Permissions;->access$500(Lorg/apache/tools/ant/types/Permissions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Permissions$Permission;

    .line 234
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Permissions$Permission;->matches(Ljava/security/Permission;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " was revoked."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/SecurityException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 238
    :cond_38
    return-void
.end method


# virtual methods
.method public checkExit(I)V
    .registers 5

    .line 192
    new-instance v0, Ljava/lang/RuntimePermission;

    const-string v1, "exitVM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :try_start_8
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/Permissions$MySM;->checkPermission(Ljava/security/Permission;)V
    :try_end_b
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_b} :catch_c

    .line 197
    return-void

    .line 195
    :catch_c
    move-exception v0

    .line 196
    new-instance v1, Lorg/apache/tools/ant/ExitException;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lorg/apache/tools/ant/ExitException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public checkPermission(Ljava/security/Permission;)V
    .registers 4

    .line 208
    iget-object v0, p0, Lorg/apache/tools/ant/types/Permissions$MySM;->this$0:Lorg/apache/tools/ant/types/Permissions;

    invoke-static {v0}, Lorg/apache/tools/ant/types/Permissions;->access$100(Lorg/apache/tools/ant/types/Permissions;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 209
    iget-object v0, p0, Lorg/apache/tools/ant/types/Permissions$MySM;->this$0:Lorg/apache/tools/ant/types/Permissions;

    invoke-static {v0}, Lorg/apache/tools/ant/types/Permissions;->access$200(Lorg/apache/tools/ant/types/Permissions;)Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-virtual {p1}, Ljava/security/Permission;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "exitVM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 210
    iget-object v0, p0, Lorg/apache/tools/ant/types/Permissions$MySM;->this$0:Lorg/apache/tools/ant/types/Permissions;

    invoke-static {v0}, Lorg/apache/tools/ant/types/Permissions;->access$300(Lorg/apache/tools/ant/types/Permissions;)Ljava/security/Permissions;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/Permissions;->implies(Ljava/security/Permission;)Z

    move-result v0

    .line 211
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/Permissions$MySM;->checkRevoked(Ljava/security/Permission;)V

    .line 216
    if-nez v0, :cond_3c

    iget-object v0, p0, Lorg/apache/tools/ant/types/Permissions$MySM;->this$0:Lorg/apache/tools/ant/types/Permissions;

    invoke-static {v0}, Lorg/apache/tools/ant/types/Permissions;->access$400(Lorg/apache/tools/ant/types/Permissions;)Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 217
    iget-object v0, p0, Lorg/apache/tools/ant/types/Permissions$MySM;->this$0:Lorg/apache/tools/ant/types/Permissions;

    invoke-static {v0}, Lorg/apache/tools/ant/types/Permissions;->access$400(Lorg/apache/tools/ant/types/Permissions;)Ljava/lang/SecurityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 226
    :cond_3c
    :goto_3c
    return-void

    .line 220
    :cond_3d
    iget-object v0, p0, Lorg/apache/tools/ant/types/Permissions$MySM;->this$0:Lorg/apache/tools/ant/types/Permissions;

    invoke-static {v0}, Lorg/apache/tools/ant/types/Permissions;->access$300(Lorg/apache/tools/ant/types/Permissions;)Ljava/security/Permissions;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/Permissions;->implies(Ljava/security/Permission;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 223
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/Permissions$MySM;->checkRevoked(Ljava/security/Permission;)V

    goto :goto_3c

    .line 221
    :cond_4d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " was not granted."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/SecurityException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
