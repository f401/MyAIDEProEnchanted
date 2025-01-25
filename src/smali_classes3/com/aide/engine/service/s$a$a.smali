.class Lcom/aide/engine/service/s$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/engine/service/s;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/engine/service/s$a;
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
        field = -0x14c23c630d425753L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/engine/service/s$a$a;

    const-wide v1, 0x36b56100ee35e740L  # 3.744781049167943E-45

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Landroid/os/IBinder;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x68537a75e2d09dL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x2d1d148a6182e685L  # 2.2305874858481578E-91

    :try_start_6
    sget-boolean v3, Lcom/aide/engine/service/s$a$a;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aide/engine/service/s$a$a;->FH:Landroid/os/IBinder;
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v3

    sget-boolean v4, Lcom/aide/engine/service/s$a$a;->DW:Z

    if-eqz v4, :cond_1b

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v3
.end method


# virtual methods
.method public DW(Lcom/aide/engine/FileHighlightings;)V
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x21250488a2d4f21dL
    .end annotation

    const-wide v0, -0x29644f4eb07e51dL

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/s$a$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_33

    :try_start_10
    const-string v3, "com.aide.engine.service.IHighlightingListener"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_20

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v2, v4}, Lcom/aide/engine/FileHighlightings;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_23

    :cond_20
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    :goto_23
    iget-object v4, p0, Lcom/aide/engine/service/s$a$a;->FH:Landroid/os/IBinder;

    const/4 v5, 0x2

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

    sget-boolean v3, Lcom/aide/engine/service/s$a$a;->DW:Z

    if-eqz v3, :cond_3b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3b
    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x2022d654b73aa055L
    .end annotation

    const-wide v0, 0x251fc8daf6ec3c73L  # 7.164708259596672E-130

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/s$a$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/engine/service/s$a$a;->FH:Landroid/os/IBinder;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/s$a$a;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public j6(Lcom/aide/engine/FileHighlightings;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x1180c45d3174a4e0L
    .end annotation

    const-wide v0, 0xecb2ec7b7ff3740L  # 2.087212084307086E-237

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/s$a$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_32

    :try_start_10
    const-string v3, "com.aide.engine.service.IHighlightingListener"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_20

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v2, v3}, Lcom/aide/engine/FileHighlightings;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_23

    :cond_20
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_23
    iget-object v3, p0, Lcom/aide/engine/service/s$a$a;->FH:Landroid/os/IBinder;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v5, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_29
    .catchall {:try_start_10 .. :try_end_29} :catchall_2d

    :try_start_29
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_2d
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
    :try_end_32
    .catchall {:try_start_29 .. :try_end_32} :catchall_32

    :catchall_32
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/s$a$a;->DW:Z

    if-eqz v3, :cond_3a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3a
    throw v2
.end method
