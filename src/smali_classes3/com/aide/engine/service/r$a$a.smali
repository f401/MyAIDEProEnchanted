.class Lcom/aide/engine/service/r$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/engine/service/r;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/engine/service/r$a;
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
        field = -0x218c7ea7a6a72aa0L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/engine/service/r$a$a;

    const-wide v1, -0x8ef8d18ac5fc4c1L  # -3.314908375545094E265

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Landroid/os/IBinder;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x18c1f67574c22acL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x2e368cb70aad74d0L  # 4.534207602608427E-86

    :try_start_6
    sget-boolean v3, Lcom/aide/engine/service/r$a$a;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aide/engine/service/r$a$a;->FH:Landroid/os/IBinder;
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v3

    sget-boolean v4, Lcom/aide/engine/service/r$a$a;->DW:Z

    if-eqz v4, :cond_1b

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v3
.end method


# virtual methods
.method public Hw(Ljava/lang/String;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x1a5327fb987afab8L
    .end annotation

    const-wide v0, 0x127490e81ba5c240L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/r$a$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_28

    :try_start_10
    const-string v3, "com.aide.engine.service.IGotoSymbolListener"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/aide/engine/service/r$a$a;->FH:Landroid/os/IBinder;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface {v3, v5, v2, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_23

    :try_start_1f
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_23
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
    :try_end_28
    .catchall {:try_start_1f .. :try_end_28} :catchall_28

    :catchall_28
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/r$a$a;->DW:Z

    if-eqz v3, :cond_30

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_30
    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x26cda247c12a267cL
    .end annotation

    const-wide v0, 0x1779c2b0d789ff54L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/r$a$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/engine/service/r$a$a;->FH:Landroid/os/IBinder;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/r$a$a;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public j6(Lcom/aide/engine/SourceEntity;)V
    .registers 9
    .annotation runtime Labcd/su;
        method = -0xac53f8c5d408c15L
    .end annotation

    const-wide v0, 0x3870ef07ce6f0b3L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/r$a$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_33

    :try_start_10
    const-string v3, "com.aide.engine.service.IGotoSymbolListener"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_20

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v2, v4}, Lcom/aide/engine/SourceEntity;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_23

    :cond_20
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    :goto_23
    iget-object v4, p0, Lcom/aide/engine/service/r$a$a;->FH:Landroid/os/IBinder;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-interface {v4, v5, v2, v6, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_2a
    .catchall {:try_start_10 .. :try_end_2a} :catchall_2e

    :try_start_2a
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_2e
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_33

    :catchall_33
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/r$a$a;->DW:Z

    if-eqz v3, :cond_3b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3b
    throw v2
.end method

.method public j6(Ljava/lang/String;Ljava/util/List;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x1f654ba680024760L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/r$a$a;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0xa3a5cc040c5e1e0L  # -2.079300258692404E259

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_2c

    :try_start_10
    const-string v1, "com.aide.engine.service.IGotoSymbolListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-object v1, p0, Lcom/aide/engine/service/r$a$a;->FH:Landroid/os/IBinder;

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

    sget-boolean v1, Lcom/aide/engine/service/r$a$a;->DW:Z

    if-eqz v1, :cond_3d

    const-wide v2, -0xa3a5cc040c5e1e0L  # -2.079300258692404E259

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3d
    throw v0
.end method
