.class Lcom/aide/engine/service/w$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/engine/service/w;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/engine/service/w$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field private FH:Landroid/os/IBinder;
    .annotation runtime Labcd/ru;
        field = 0x61d7c4b4dbbfa23L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/engine/service/w$a$a;

    const-wide v1, -0x3e1e653ee2587c0cL  # -2.3628372292348576E9

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Landroid/os/IBinder;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x31253450b065be7L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x704f213a06d8c9f7L

    :try_start_6
    sget-boolean v3, Lcom/aide/engine/service/w$a$a;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aide/engine/service/w$a$a;->FH:Landroid/os/IBinder;
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v3

    sget-boolean v4, Lcom/aide/engine/service/w$a$a;->DW:Z

    if-eqz v4, :cond_1b

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v3
.end method


# virtual methods
.method public DW(Ljava/lang/String;)V
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x20c9a68dc8c4c6d3L
    .end annotation

    const-wide v0, 0x44f9a66fd44fb9c1L  # 1.9380700758603106E24

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/w$a$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_29

    :try_start_10
    const-string v3, "com.aide.engine.service.IUsageSearcherListener"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/aide/engine/service/w$a$a;->FH:Landroid/os/IBinder;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    invoke-interface {v3, v6, v2, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_20
    .catchall {:try_start_10 .. :try_end_20} :catchall_24

    :try_start_20
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_24
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_29

    :catchall_29
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/w$a$a;->DW:Z

    if-eqz v3, :cond_31

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_31
    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x175d748ba4b45b41L
    .end annotation

    const-wide v0, 0xab843049f57116fL

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/w$a$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/engine/service/w$a$a;->FH:Landroid/os/IBinder;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/w$a$a;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public br()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x15dbfc5153b74d4dL
    .end annotation

    const-wide v0, 0x46f9c728082ffb55L  # 8.365424539680276E33

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/w$a$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_25

    :try_start_10
    const-string v3, "com.aide.engine.service.IUsageSearcherListener"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/aide/engine/service/w$a$a;->FH:Landroid/os/IBinder;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface {v3, v5, v2, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_20

    :try_start_1c
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_20
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_25

    :catchall_25
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/w$a$a;->DW:Z

    if-eqz v3, :cond_2d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2d
    throw v2
.end method

.method public j6(Ljava/util/List;)V
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x3df2ff056e103778L
    .end annotation

    const-wide v0, 0x9d7514e53410270L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/w$a$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_29

    :try_start_10
    const-string v3, "com.aide.engine.service.IUsageSearcherListener"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-object v3, p0, Lcom/aide/engine/service/w$a$a;->FH:Landroid/os/IBinder;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x3

    invoke-interface {v3, v6, v2, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_20
    .catchall {:try_start_10 .. :try_end_20} :catchall_24

    :try_start_20
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_24
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_29

    :catchall_29
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/w$a$a;->DW:Z

    if-eqz v3, :cond_31

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_31
    throw v2
.end method
