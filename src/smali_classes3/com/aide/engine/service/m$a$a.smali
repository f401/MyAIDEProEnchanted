.class Lcom/aide/engine/service/m$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/engine/service/m;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/engine/service/m$a;
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
        field = -0xbddba3039967c30L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/engine/service/m$a$a;

    const-wide v1, -0x6ae2b8a2bfec4ff8L  # -5.699749511627362E-207

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Landroid/os/IBinder;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x27a37f70d76ee0L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x3b1f96b4935e5bb0L  # -6.2000165400185E23

    :try_start_6
    sget-boolean v3, Lcom/aide/engine/service/m$a$a;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aide/engine/service/m$a$a;->FH:Landroid/os/IBinder;
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v3

    sget-boolean v4, Lcom/aide/engine/service/m$a$a;->DW:Z

    if-eqz v4, :cond_1b

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v3
.end method


# virtual methods
.method public VH(Z)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x87e5b524e6a2d3bL
    .end annotation

    const-wide v0, 0x1feb60bd212c6281L  # 6.381050045492373E-155

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/m$a$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_28

    :try_start_10
    const-string v3, "com.aide.engine.service.IBuildListener"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Lcom/aide/engine/service/m$a$a;->FH:Landroid/os/IBinder;

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

    sget-boolean v3, Lcom/aide/engine/service/m$a$a;->DW:Z

    if-eqz v3, :cond_35

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_35
    throw v2
.end method

.method public Zo(Ljava/lang/String;)V
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x275a028e0a9efe10L
    .end annotation

    const-wide v0, 0x1a2db67d121a39ecL

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/m$a$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_29

    :try_start_10
    const-string v3, "com.aide.engine.service.IBuildListener"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/aide/engine/service/m$a$a;->FH:Landroid/os/IBinder;

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

    sget-boolean v3, Lcom/aide/engine/service/m$a$a;->DW:Z

    if-eqz v3, :cond_31

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_31
    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x287ec24792722d90L
    .end annotation

    const-wide v0, -0x27d9511b103ebe60L  # -4.4688141510768585E116

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/m$a$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/engine/service/m$a$a;->FH:Landroid/os/IBinder;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/m$a$a;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method
