.class Lcom/aide/engine/service/v$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/engine/service/v;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/engine/service/v$a;
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
        field = 0x2e5f6ffa9e168ad0L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/engine/service/v$a$a;

    const-wide v1, -0xf4cc5b3674b7800L  # -7.641958571629619E234

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Landroid/os/IBinder;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x431455317bfd2114L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x63589934183175a0L

    :try_start_6
    sget-boolean v3, Lcom/aide/engine/service/v$a$a;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aide/engine/service/v$a$a;->FH:Landroid/os/IBinder;
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v3

    sget-boolean v4, Lcom/aide/engine/service/v$a$a;->DW:Z

    if-eqz v4, :cond_1b

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v3
.end method


# virtual methods
.method public DW(Ljava/lang/String;Ljava/util/List;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x338c3d6c6215d3d8L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/v$a$a;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x7aeb639f2d1d3a0L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_2c

    :try_start_10
    const-string v1, "com.aide.engine.service.IRefactoringListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-object v1, p0, Lcom/aide/engine/service/v$a$a;->FH:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x5

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_23
    .catchall {:try_start_10 .. :try_end_23} :catchall_27

    :try_start_23
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_27
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
    :try_end_2c
    .catchall {:try_start_23 .. :try_end_2c} :catchall_2c

    :catchall_2c
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/v$a$a;->DW:Z

    if-eqz v1, :cond_3d

    const-wide v2, 0x7aeb639f2d1d3a0L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3d
    throw v0
.end method

.method public EQ(Ljava/lang/String;)V
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x13584cdf3a7cfc0cL
    .end annotation

    const-wide v0, -0x15f1d1937949a234L  # -7.392743993051413E202

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/v$a$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_29

    :try_start_10
    const-string v3, "com.aide.engine.service.IRefactoringListener"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/aide/engine/service/v$a$a;->FH:Landroid/os/IBinder;

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

    sget-boolean v3, Lcom/aide/engine/service/v$a$a;->DW:Z

    if-eqz v3, :cond_31

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_31
    throw v2
.end method

.method public FH(Ljava/util/List;)V
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x4e77562cd6aa05bbL
    .end annotation

    const-wide v0, 0x182d774b59091481L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/v$a$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_29

    :try_start_10
    const-string v3, "com.aide.engine.service.IRefactoringListener"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-object v3, p0, Lcom/aide/engine/service/v$a$a;->FH:Landroid/os/IBinder;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x4

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

    sget-boolean v3, Lcom/aide/engine/service/v$a$a;->DW:Z

    if-eqz v3, :cond_31

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_31
    throw v2
.end method

.method public Hw(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x42d8407663cc8ed3L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/v$a$a;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x45ae5b67a77fdb61L  # 4.6975260188961717E27

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_2c

    :try_start_10
    const-string v1, "com.aide.engine.service.IRefactoringListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aide/engine/service/v$a$a;->FH:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_23
    .catchall {:try_start_10 .. :try_end_23} :catchall_27

    :try_start_23
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_27
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
    :try_end_2c
    .catchall {:try_start_23 .. :try_end_2c} :catchall_2c

    :catchall_2c
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/v$a$a;->DW:Z

    if-eqz v1, :cond_3d

    const-wide v2, 0x45ae5b67a77fdb61L  # 4.6975260188961717E27

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3d
    throw v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x14e92459eb64d1e4L
    .end annotation

    const-wide v0, -0x15d41364a5c63df4L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/v$a$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/engine/service/v$a$a;->FH:Landroid/os/IBinder;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/v$a$a;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public j6(Ljava/lang/String;Ljava/util/Map;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x18a4d0d8306f1e9fL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/v$a$a;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x1ad30552a1ed15dL

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_2b

    :try_start_10
    const-string v1, "com.aide.engine.service.IRefactoringListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/aide/engine/service/v$a$a;->FH:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_22
    .catchall {:try_start_10 .. :try_end_22} :catchall_26

    :try_start_22
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_26
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
    :try_end_2b
    .catchall {:try_start_22 .. :try_end_2b} :catchall_2b

    :catchall_2b
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/v$a$a;->DW:Z

    if-eqz v1, :cond_3c

    const-wide v2, 0x1ad30552a1ed15dL

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3c
    throw v0
.end method
