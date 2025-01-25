.class public Lcom/aide/engine/service/CharArray;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/aide/engine/service/CharArray;",
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
.field public FH:[C

.field public Hw:I


# direct methods
.method static constructor <clinit>()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x25399f0554b020a0L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x11a0b2a917e72b49L  # -4.525956508923515E223

    :try_start_6
    const-class v3, Lcom/aide/engine/service/CharArray;

    const-wide v4, 0x4f4636247023f07cL  # 7.848862419138488E73

    invoke-static {v3, v4, v5, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v3, Lcom/aide/engine/service/CharArray;->j6:Z

    if-eqz v3, :cond_17

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_17
    new-instance v3, Lcom/aide/engine/service/a;

    invoke-direct {v3}, Lcom/aide/engine/service/a;-><init>()V

    sput-object v3, Lcom/aide/engine/service/CharArray;->CREATOR:Landroid/os/Parcelable$Creator;
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_1f

    return-void

    :catchall_1f
    move-exception v3

    sget-boolean v4, Lcom/aide/engine/service/CharArray;->DW:Z

    if-eqz v4, :cond_27

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_27
    throw v3
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x57c3acb1dc8f5f8L  # -1.435489608183168E282

    :try_start_6
    sget-boolean v3, Lcom/aide/engine/service/CharArray;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Lcom/aide/engine/service/CharArray;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method public constructor <init>(I)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, -0x1031577d0788b355L  # -3.7185535469106416E230

    :try_start_6
    sget-boolean v3, Lcom/aide/engine/service/CharArray;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v3, p1, [C

    iput-object v3, p0, Lcom/aide/engine/service/CharArray;->FH:[C
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v3

    sget-boolean v4, Lcom/aide/engine/service/CharArray;->DW:Z

    if-eqz v4, :cond_22

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v3, v1, v2, v0, v4}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v3
.end method


# virtual methods
.method public describeContents()I
    .registers 5

    const-wide v0, -0x20094b445014ad88L  # -1.9027346109447464E154

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/CharArray;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x0

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/CharArray;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public j6(Landroid/os/Parcel;)V
    .registers 8

    const-wide v0, -0xef921dcf5dc34b8L  # -2.908369091478089E236

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/CharArray;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/aide/engine/service/CharArray;->Hw:I

    iget-object v3, p0, Lcom/aide/engine/service/CharArray;->FH:[C

    if-eqz v3, :cond_19

    array-length v3, v3

    if-ge v3, v2, :cond_27

    :cond_19
    mul-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0x4

    const/16 v3, 0x2710

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-array v2, v2, [C

    iput-object v2, p0, Lcom/aide/engine/service/CharArray;->FH:[C

    :cond_27
    iget v2, p0, Lcom/aide/engine/service/CharArray;->Hw:I

    iget-object v3, p0, Lcom/aide/engine/service/CharArray;->FH:[C

    const/4 v4, 0x0

    :goto_2c
    if-ge v4, v2, :cond_38

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    int-to-char v5, v5

    aput-char v5, v3, v4
    :try_end_35
    .catchall {:try_start_5 .. :try_end_35} :catchall_39

    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    :cond_38
    return-void

    :catchall_39
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/CharArray;->DW:Z

    if-eqz v3, :cond_41

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_41
    goto :goto_43

    :goto_42
    throw v2

    :goto_43
    goto :goto_42
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/CharArray;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x31a31ed1044e4d9bL  # 1.385183972492363E-69

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iget v0, p0, Lcom/aide/engine/service/CharArray;->Hw:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/aide/engine/service/CharArray;->Hw:I

    iget-object v1, p0, Lcom/aide/engine/service/CharArray;->FH:[C

    const/4 v2, 0x0

    :goto_1b
    if-ge v2, v0, :cond_25

    aget-char v3, v1, v2

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_22
    .catchall {:try_start_0 .. :try_end_22} :catchall_26

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_25
    return-void

    :catchall_26
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/CharArray;->DW:Z

    if-eqz v1, :cond_3b

    const-wide v2, 0x31a31ed1044e4d9bL  # 1.385183972492363E-69

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3b
    goto :goto_3d

    :goto_3c
    throw v0

    :goto_3d
    goto :goto_3c
.end method
