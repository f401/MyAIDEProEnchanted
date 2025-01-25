.class Lcom/aide/ui/scm/wa$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/ui/scm/wa;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/scm/wa$a;
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
        field = -0x2018e63bc0640ca1L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/scm/wa$a$a;

    const-wide v1, -0x2128dd5d5287f470L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Landroid/os/IBinder;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x87414116875a5bL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x6a299250caaa990bL  # 2.5054403282905414E203

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/scm/wa$a$a;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aide/ui/scm/wa$a$a;->FH:Landroid/os/IBinder;
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/scm/wa$a$a;->DW:Z

    if-eqz v4, :cond_1b

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v3
.end method


# virtual methods
.method public DW(Ljava/lang/String;Lcom/aide/ui/scm/xa;)Lcom/aide/ui/scm/GitStatus;
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x16cff51cdf235e99L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/wa$a$a;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x191c28759cc8c9a3L  # -4.316699177898046E187

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_4f

    :try_start_14
    const-string v2, "com.aide.ui.scm.IExternalGitService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_24

    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_25

    :cond_24
    move-object v3, v2

    :goto_25
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v3, p0, Lcom/aide/ui/scm/wa$a$a;->FH:Landroid/os/IBinder;

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_40

    sget-object v2, Lcom/aide/ui/scm/GitStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/scm/GitStatus;
    :try_end_40
    .catchall {:try_start_14 .. :try_end_40} :catchall_47

    :cond_40
    :try_start_40
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_47
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
    :try_end_4f
    .catchall {:try_start_40 .. :try_end_4f} :catchall_4f

    :catchall_4f
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/wa$a$a;->DW:Z

    if-eqz v1, :cond_60

    const-wide v2, -0x191c28759cc8c9a3L  # -4.316699177898046E187

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_60
    throw v0
.end method

.method public DW(Ljava/lang/String;Ljava/lang/String;Lcom/aide/ui/scm/xa;)Ljava/lang/String;
    .registers 12
    .annotation runtime Labcd/su;
        method = -0xa6584905c1b757dL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/wa$a$a;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, 0x3b2e750b60b7043fL  # 1.2596804686927084E-23

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_4c

    :try_start_18
    const-string v2, "com.aide.ui.scm.IExternalGitService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz p3, :cond_2a

    invoke-interface {p3}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_2b

    :cond_2a
    const/4 v2, 0x0

    :goto_2b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v2, p0, Lcom/aide/ui/scm/wa$a$a;->FH:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_3d
    .catchall {:try_start_18 .. :try_end_3d} :catchall_44

    :try_start_3d
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_44
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
    :try_end_4c
    .catchall {:try_start_3d .. :try_end_4c} :catchall_4c

    :catchall_4c
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/wa$a$a;->DW:Z

    if-eqz v1, :cond_5e

    const-wide v2, 0x3b2e750b60b7043fL  # 1.2596804686927084E-23

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5e
    throw v0
.end method

.method public DW(Lcom/aide/ui/scm/GitConfiguration;Ljava/lang/String;Lcom/aide/ui/scm/xa;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0xd510d77c41dac84L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/wa$a$a;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, 0x470858b49e85ab4L

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_51

    :try_start_18
    const-string v2, "com.aide.ui.scm.IExternalGitService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_28

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0, v2}, Lcom/aide/ui/scm/GitConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2b

    :cond_28
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2b
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz p3, :cond_35

    invoke-interface {p3}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_36

    :cond_35
    const/4 v3, 0x0

    :goto_36
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v3, p0, Lcom/aide/ui/scm/wa$a$a;->FH:Landroid/os/IBinder;

    const/4 v4, 0x3

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_42
    .catchall {:try_start_18 .. :try_end_42} :catchall_49

    :try_start_42
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_49
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
    :try_end_51
    .catchall {:try_start_42 .. :try_end_51} :catchall_51

    :catchall_51
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/wa$a$a;->DW:Z

    if-eqz v1, :cond_63

    const-wide v2, 0x470858b49e85ab4L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_63
    throw v0
.end method

.method public FH(Ljava/lang/String;Lcom/aide/ui/scm/xa;)Ljava/util/List;
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x3623226789939cdbL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/aide/ui/scm/xa;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/wa$a$a;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x192eea0c24f8fee1L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_45

    :try_start_14
    const-string v2, "com.aide.ui.scm.IExternalGitService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz p2, :cond_23

    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_24

    :cond_23
    const/4 v2, 0x0

    :goto_24
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v2, p0, Lcom/aide/ui/scm/wa$a$a;->FH:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2
    :try_end_36
    .catchall {:try_start_14 .. :try_end_36} :catchall_3d

    :try_start_36
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
    :try_end_45
    .catchall {:try_start_36 .. :try_end_45} :catchall_45

    :catchall_45
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/wa$a$a;->DW:Z

    if-eqz v1, :cond_56

    const-wide v2, 0x192eea0c24f8fee1L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_56
    throw v0
.end method

.method public FH(Ljava/lang/String;Ljava/lang/String;Lcom/aide/ui/scm/xa;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x1b312398339b8f21L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/wa$a$a;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, 0x20ad682181ff963bL  # 2.80736826228543E-151

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_48

    :try_start_18
    const-string v2, "com.aide.ui.scm.IExternalGitService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz p3, :cond_2a

    invoke-interface {p3}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_2b

    :cond_2a
    const/4 v2, 0x0

    :goto_2b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v2, p0, Lcom/aide/ui/scm/wa$a$a;->FH:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_39
    .catchall {:try_start_18 .. :try_end_39} :catchall_40

    :try_start_39
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
    :try_end_48
    .catchall {:try_start_39 .. :try_end_48} :catchall_48

    :catchall_48
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/wa$a$a;->DW:Z

    if-eqz v1, :cond_5a

    const-wide v2, 0x20ad682181ff963bL  # 2.80736826228543E-151

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5a
    throw v0
.end method

.method public Hw(Ljava/lang/String;Ljava/lang/String;Lcom/aide/ui/scm/xa;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0xa2701da4dd095a8L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/wa$a$a;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, 0x437f75bab5aa8e8L

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_48

    :try_start_18
    const-string v2, "com.aide.ui.scm.IExternalGitService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz p3, :cond_2a

    invoke-interface {p3}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_2b

    :cond_2a
    const/4 v2, 0x0

    :goto_2b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v2, p0, Lcom/aide/ui/scm/wa$a$a;->FH:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_39
    .catchall {:try_start_18 .. :try_end_39} :catchall_40

    :try_start_39
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
    :try_end_48
    .catchall {:try_start_39 .. :try_end_48} :catchall_48

    :catchall_48
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/wa$a$a;->DW:Z

    if-eqz v1, :cond_5a

    const-wide v2, 0x437f75bab5aa8e8L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5a
    throw v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x7e4d54028473c6dL
    .end annotation

    const-wide v0, -0x32a07851c183cd2fL  # -5.188276281219079E64

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/wa$a$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/ui/scm/wa$a$a;->FH:Landroid/os/IBinder;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/wa$a$a;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public cancel()V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x1e35e9211743f621L
    .end annotation

    const-wide v0, 0xbf89ee44d04450dL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/wa$a$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_27

    :try_start_10
    const-string v3, "com.aide.ui.scm.IExternalGitService"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/aide/ui/scm/wa$a$a;->FH:Landroid/os/IBinder;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0xf

    invoke-interface {v3, v6, v2, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_22

    :try_start_1e
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_22
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_27

    :catchall_27
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/wa$a$a;->DW:Z

    if-eqz v3, :cond_2f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2f
    throw v2
.end method

.method public j6(Ljava/lang/String;Lcom/aide/ui/scm/xa;)Ljava/lang/String;
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x9ea2f5bd0f5660L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/wa$a$a;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x542f656b96fc6150L  # 3.3530909188566074E97

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_45

    :try_start_14
    const-string v2, "com.aide.ui.scm.IExternalGitService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz p2, :cond_23

    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_24

    :cond_23
    const/4 v2, 0x0

    :goto_24
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v2, p0, Lcom/aide/ui/scm/wa$a$a;->FH:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_36
    .catchall {:try_start_14 .. :try_end_36} :catchall_3d

    :try_start_36
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
    :try_end_45
    .catchall {:try_start_36 .. :try_end_45} :catchall_45

    :catchall_45
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/wa$a$a;->DW:Z

    if-eqz v1, :cond_56

    const-wide v2, 0x542f656b96fc6150L  # 3.3530909188566074E97

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_56
    throw v0
.end method

.method public j6(Lcom/aide/ui/scm/GitConfiguration;Ljava/lang/String;Lcom/aide/ui/scm/xa;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0xd8845e4228e79f3L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/wa$a$a;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, 0x4b4b79ed08480b9L

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_51

    :try_start_18
    const-string v2, "com.aide.ui.scm.IExternalGitService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_28

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0, v2}, Lcom/aide/ui/scm/GitConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2b

    :cond_28
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2b
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz p3, :cond_35

    invoke-interface {p3}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_36

    :cond_35
    const/4 v3, 0x0

    :goto_36
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v3, p0, Lcom/aide/ui/scm/wa$a$a;->FH:Landroid/os/IBinder;

    const/4 v4, 0x4

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_42
    .catchall {:try_start_18 .. :try_end_42} :catchall_49

    :try_start_42
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_49
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
    :try_end_51
    .catchall {:try_start_42 .. :try_end_51} :catchall_51

    :catchall_51
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/wa$a$a;->DW:Z

    if-eqz v1, :cond_63

    const-wide v2, 0x4b4b79ed08480b9L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_63
    throw v0
.end method

.method public j6(Lcom/aide/ui/scm/GitConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/ui/scm/xa;)V
    .registers 16
    .annotation runtime Labcd/su;
        method = -0x121ab675ba5006d8L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/wa$a$a;->j6:Z

    if-eqz v0, :cond_12

    const-wide v1, 0x644e1c32808bbc0L

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_58

    :try_start_1a
    const-string v2, "com.aide.ui.scm.IExternalGitService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_2a

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0, v3}, Lcom/aide/ui/scm/GitConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2d

    :cond_2a
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2d
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz p5, :cond_3d

    invoke-interface {p5}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    goto :goto_3e

    :cond_3d
    const/4 v4, 0x0

    :goto_3e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v4, p0, Lcom/aide/ui/scm/wa$a$a;->FH:Landroid/os/IBinder;

    invoke-interface {v4, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_49
    .catchall {:try_start_1a .. :try_end_49} :catchall_50

    :try_start_49
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_50
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
    :try_end_58
    .catchall {:try_start_49 .. :try_end_58} :catchall_58

    :catchall_58
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/wa$a$a;->DW:Z

    if-eqz v1, :cond_6c

    const-wide v2, 0x644e1c32808bbc0L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6c
    throw v0
.end method

.method public j6(Lcom/aide/ui/scm/GitConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/aide/ui/scm/xa;)V
    .registers 16
    .annotation runtime Labcd/su;
        method = 0xc98f6802f8465f7L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aide/ui/scm/GitConfiguration;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/aide/ui/scm/xa;",
            ")V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/wa$a$a;->j6:Z

    if-eqz v0, :cond_12

    const-wide v1, 0x249fcf585ac2108bL

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_59

    :try_start_1a
    const-string v2, "com.aide.ui.scm.IExternalGitService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_2a

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0, v2}, Lcom/aide/ui/scm/GitConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2d

    :cond_2a
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2d
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    if-eqz p5, :cond_3d

    invoke-interface {p5}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_3e

    :cond_3d
    const/4 v3, 0x0

    :goto_3e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v3, p0, Lcom/aide/ui/scm/wa$a$a;->FH:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_4a
    .catchall {:try_start_1a .. :try_end_4a} :catchall_51

    :try_start_4a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_51
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
    :try_end_59
    .catchall {:try_start_4a .. :try_end_59} :catchall_59

    :catchall_59
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/wa$a$a;->DW:Z

    if-eqz v1, :cond_6d

    const-wide v2, 0x249fcf585ac2108bL

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6d
    throw v0
.end method

.method public j6(Lcom/aide/ui/scm/GitConfiguration;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/aide/ui/scm/xa;)V
    .registers 16
    .annotation runtime Labcd/su;
        method = 0x2d137584d5b76230L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aide/ui/scm/GitConfiguration;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/aide/ui/scm/ModifiedFile;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/aide/ui/scm/xa;",
            ")V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/wa$a$a;->j6:Z

    if-eqz v0, :cond_12

    const-wide v1, -0x5557153bf2166d28L

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_59

    :try_start_1a
    const-string v2, "com.aide.ui.scm.IExternalGitService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_2a

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0, v2}, Lcom/aide/ui/scm/GitConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2d

    :cond_2a
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2d
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz p5, :cond_3d

    invoke-interface {p5}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_3e

    :cond_3d
    const/4 v3, 0x0

    :goto_3e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v3, p0, Lcom/aide/ui/scm/wa$a$a;->FH:Landroid/os/IBinder;

    const/4 v4, 0x6

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_4a
    .catchall {:try_start_1a .. :try_end_4a} :catchall_51

    :try_start_4a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_51
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
    :try_end_59
    .catchall {:try_start_4a .. :try_end_59} :catchall_59

    :catchall_59
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/wa$a$a;->DW:Z

    if-eqz v1, :cond_6d

    const-wide v2, -0x5557153bf2166d28L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6d
    throw v0
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;Lcom/aide/ui/scm/xa;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x23c359d6e731b259L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/wa$a$a;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, -0x5aea01742a0640ddL

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_48

    :try_start_18
    const-string v2, "com.aide.ui.scm.IExternalGitService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz p3, :cond_2a

    invoke-interface {p3}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_2b

    :cond_2a
    const/4 v2, 0x0

    :goto_2b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v2, p0, Lcom/aide/ui/scm/wa$a$a;->FH:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_39
    .catchall {:try_start_18 .. :try_end_39} :catchall_40

    :try_start_39
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
    :try_end_48
    .catchall {:try_start_39 .. :try_end_48} :catchall_48

    :catchall_48
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/wa$a$a;->DW:Z

    if-eqz v1, :cond_5a

    const-wide v2, -0x5aea01742a0640ddL

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5a
    throw v0
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/ui/scm/xa;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x5c8a330512884d2cL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/wa$a$a;->j6:Z

    if-eqz v0, :cond_11

    const-wide v1, 0x2b4f61c4a86f78bcL

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_4c

    :try_start_19
    const-string v2, "com.aide.ui.scm.IExternalGitService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz p4, :cond_2e

    invoke-interface {p4}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_2f

    :cond_2e
    const/4 v2, 0x0

    :goto_2f
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v2, p0, Lcom/aide/ui/scm/wa$a$a;->FH:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3d
    .catchall {:try_start_19 .. :try_end_3d} :catchall_44

    :try_start_3d
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_44
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
    :try_end_4c
    .catchall {:try_start_3d .. :try_end_4c} :catchall_4c

    :catchall_4c
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/wa$a$a;->DW:Z

    if-eqz v1, :cond_5f

    const-wide v2, 0x2b4f61c4a86f78bcL

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5f
    throw v0
.end method

.method public j6(Ljava/lang/String;Ljava/util/List;Lcom/aide/ui/scm/xa;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0xb6044087b5bd1d1L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/aide/ui/scm/ModifiedFile;",
            ">;",
            "Lcom/aide/ui/scm/xa;",
            ")V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/wa$a$a;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, -0xd8cefca88f29f0bL  # -2.033831439555457E243

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_47

    :try_start_18
    const-string v2, "com.aide.ui.scm.IExternalGitService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    if-eqz p3, :cond_2a

    invoke-interface {p3}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_2b

    :cond_2a
    const/4 v2, 0x0

    :goto_2b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v2, p0, Lcom/aide/ui/scm/wa$a$a;->FH:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_38
    .catchall {:try_start_18 .. :try_end_38} :catchall_3f

    :try_start_38
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_3f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
    :try_end_47
    .catchall {:try_start_38 .. :try_end_47} :catchall_47

    :catchall_47
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/wa$a$a;->DW:Z

    if-eqz v1, :cond_59

    const-wide v2, -0xd8cefca88f29f0bL  # -2.033831439555457E243

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_59
    throw v0
.end method
