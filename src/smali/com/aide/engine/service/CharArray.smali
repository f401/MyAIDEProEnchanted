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
            "Landroid/os/Parcelable$Creator",
            "<",
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
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x25399f0554b020a0L
    .end annotation

    const-wide v8, -0x11a0b2a917e72b49L    # -4.525956508923515E223

    const/4 v6, 0x0

    :try_start_0
    const-class v0, Lcom/aide/engine/service/CharArray;

    const-wide v2, 0x4f4636247023f07cL    # 7.848862419138488E73

    const-wide v4, 0x4f4636247023f07cL    # 7.848862419138488E73

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v0, Lcom/aide/engine/service/CharArray;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x11a0b2a917e72b49L    # -4.525956508923515E223

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/engine/service/a;

    invoke-direct {v0}, Lcom/aide/engine/service/a;-><init>()V

    sput-object v0, Lcom/aide/engine/service/CharArray;->CREATOR:Landroid/os/Parcelable$Creator;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/CharArray;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v8, v9, v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, -0x57c3acb1dc8f5f8L    # -1.435489608183168E282

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/CharArray;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x57c3acb1dc8f5f8L    # -1.435489608183168E282

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/CharArray;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public constructor <init>(I)V
    .registers 8

    const-wide v4, -0x1031577d0788b355L    # -3.7185535469106416E230

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/CharArray;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1031577d0788b355L    # -3.7185535469106416E230

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [C

    iput-object v0, p0, Lcom/aide/engine/service/CharArray;->FH:[C
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/CharArray;->DW:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v4, v5, v3, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method public describeContents()I
    .registers 5

    const-wide v2, -0x20094b445014ad88L    # -1.9027346109447464E154

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/CharArray;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x20094b445014ad88L    # -1.9027346109447464E154

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/CharArray;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Landroid/os/Parcel;)V
    .registers 8

    const-wide v4, -0xef921dcf5dc34b8L    # -2.908369091478089E236

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/CharArray;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xef921dcf5dc34b8L    # -2.908369091478089E236

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/aide/engine/service/CharArray;->Hw:I

    iget-object v0, p0, Lcom/aide/engine/service/CharArray;->FH:[C

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/engine/service/CharArray;->FH:[C

    array-length v0, v0

    iget v1, p0, Lcom/aide/engine/service/CharArray;->Hw:I

    if-ge v0, v1, :cond_2

    :cond_1
    const/16 v0, 0x2710

    iget v1, p0, Lcom/aide/engine/service/CharArray;->Hw:I

    mul-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/aide/engine/service/CharArray;->FH:[C

    :cond_2
    iget v1, p0, Lcom/aide/engine/service/CharArray;->Hw:I

    iget-object v2, p0, Lcom/aide/engine/service/CharArray;->FH:[C

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v3, v3

    aput-char v3, v2, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/CharArray;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0

    :cond_4
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 10

    const-wide v2, 0x31a31ed1044e4d9bL    # 1.385183972492363E-69

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/CharArray;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, 0x31a31ed1044e4d9bL    # 1.385183972492363E-69

    invoke-static {v4, v5, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/aide/engine/service/CharArray;->Hw:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Lcom/aide/engine/service/CharArray;->Hw:I

    iget-object v4, p0, Lcom/aide/engine/service/CharArray;->FH:[C

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    aget-char v5, v4, v0

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/service/CharArray;->DW:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1

    :cond_2
    return-void
.end method
