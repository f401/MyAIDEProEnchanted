.class public Lcom/aide/ui/scm/ModifiedFile;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/aide/ui/scm/f;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/aide/ui/scm/ModifiedFile;",
            ">;"
        }
    .end annotation
.end field

.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field public final FH:Ljava/lang/String;

.field public final Hw:I


# direct methods
.method static constructor <clinit>()V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x1e33a3fe20277931L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x1d854464621e344bL  # -2.463104150884118E166

    :try_start_6
    const-class v3, Lcom/aide/ui/scm/ModifiedFile;

    const-wide v4, -0x3324ee14634709e0L  # -1.739992604750471E62

    invoke-static {v3, v4, v5, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v3, Lcom/aide/ui/scm/ModifiedFile;->j6:Z

    if-eqz v3, :cond_17

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_17
    new-instance v3, Lcom/aide/ui/scm/ya;

    invoke-direct {v3}, Lcom/aide/ui/scm/ya;-><init>()V

    sput-object v3, Lcom/aide/ui/scm/ModifiedFile;->CREATOR:Landroid/os/Parcelable$Creator;
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_1f

    return-void

    :catchall_1f
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/scm/ModifiedFile;->DW:Z

    if-eqz v4, :cond_27

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_27
    throw v3
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, -0xb8f12a88bc9db10L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/scm/ModifiedFile;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/aide/ui/scm/ModifiedFile;->Hw:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/aide/ui/scm/ModifiedFile;->FH:Ljava/lang/String;
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/scm/ModifiedFile;->DW:Z

    if-eqz v4, :cond_25

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    throw v3
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ModifiedFile;->j6:Z

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x25a867c8c9c1ffabL  # -1.5971682489490822E127

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aide/ui/scm/ModifiedFile;->FH:Ljava/lang/String;

    iput p2, p0, Lcom/aide/ui/scm/ModifiedFile;->Hw:I
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ModifiedFile;->DW:Z

    if-eqz v1, :cond_2f

    const-wide v2, -0x25a867c8c9c1ffabL  # -1.5971682489490822E127

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2f
    throw v0
.end method


# virtual methods
.method public DW()Z
    .registers 5

    const-wide v0, 0x1794a2a6d39b30c5L  # 4.416872142742447E-195

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ModifiedFile;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v0, p0, Lcom/aide/ui/scm/ModifiedFile;->Hw:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_15

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ModifiedFile;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public FH()Z
    .registers 5

    const-wide v0, 0x207dd3683c574aa9L  # 3.55921676879726E-152

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ModifiedFile;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v0, p0, Lcom/aide/ui/scm/ModifiedFile;->Hw:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_16

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ModifiedFile;->DW:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public Hw()Z
    .registers 5

    const-wide v0, -0x217a05f070178df5L  # -2.1953933892449832E147

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ModifiedFile;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v0, p0, Lcom/aide/ui/scm/ModifiedFile;->Hw:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_16

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ModifiedFile;->DW:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public VH()Z
    .registers 5

    const-wide v0, -0x1143bb8611a8bc9bL  # -2.6157964881170932E225

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ModifiedFile;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v0, p0, Lcom/aide/ui/scm/ModifiedFile;->Hw:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_16

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ModifiedFile;->DW:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public Zo()Z
    .registers 5

    const-wide v0, 0x30808a5d2093a200L  # 4.571084914156475E-75

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ModifiedFile;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v0, p0, Lcom/aide/ui/scm/ModifiedFile;->Hw:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_16

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ModifiedFile;->DW:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public describeContents()I
    .registers 5

    const-wide v0, 0x2665ce2d29df7ac4L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ModifiedFile;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x0

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ModifiedFile;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public gn()Z
    .registers 5

    const-wide v0, 0x74e0c66014ca400L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ModifiedFile;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v0, p0, Lcom/aide/ui/scm/ModifiedFile;->Hw:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_16

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ModifiedFile;->DW:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public j6()Ljava/lang/String;
    .registers 5

    const-wide v0, -0x2b837c08ec948530L  # -9.74539431366944E98

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ModifiedFile;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/aide/ui/scm/ModifiedFile;->DW()Z

    move-result v3

    if-eqz v3, :cond_1c

    const-string v3, "added, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1c
    invoke-virtual {p0}, Lcom/aide/ui/scm/ModifiedFile;->FH()Z

    move-result v3

    if-eqz v3, :cond_27

    const-string v3, "changed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_27
    invoke-virtual {p0}, Lcom/aide/ui/scm/ModifiedFile;->VH()Z

    move-result v3

    if-eqz v3, :cond_32

    const-string v3, "removed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_32
    invoke-virtual {p0}, Lcom/aide/ui/scm/ModifiedFile;->v5()Z

    move-result v3

    if-eqz v3, :cond_3d

    const-string v3, "missing, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3d
    invoke-virtual {p0}, Lcom/aide/ui/scm/ModifiedFile;->Zo()Z

    move-result v3

    if-eqz v3, :cond_48

    const-string v3, "modified, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_48
    invoke-virtual {p0}, Lcom/aide/ui/scm/ModifiedFile;->gn()Z

    move-result v3

    if-eqz v3, :cond_53

    const-string v3, "untracked, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_53
    invoke-virtual {p0}, Lcom/aide/ui/scm/ModifiedFile;->Hw()Z

    move-result v3

    if-eqz v3, :cond_5e

    const-string v3, "conflicting, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_6d

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_6d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_71
    .catchall {:try_start_5 .. :try_end_71} :catchall_72

    return-object v0

    :catchall_72
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ModifiedFile;->DW:Z

    if-eqz v3, :cond_7a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_7a
    throw v2
.end method

.method public v5()Z
    .registers 5

    const-wide v0, -0x231e17745f1c5889L  # -2.665780117804721E139

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ModifiedFile;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v0, p0, Lcom/aide/ui/scm/ModifiedFile;->Hw:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_16

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ModifiedFile;->DW:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ModifiedFile;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x23dda3fa85a56b5fL  # -6.672182728994563E135

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iget v0, p0, Lcom/aide/ui/scm/ModifiedFile;->Hw:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/aide/ui/scm/ModifiedFile;->FH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_1c

    return-void

    :catchall_1c
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ModifiedFile;->DW:Z

    if-eqz v1, :cond_31

    const-wide v2, -0x23dda3fa85a56b5fL  # -6.672182728994563E135

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_31
    throw v0
.end method
