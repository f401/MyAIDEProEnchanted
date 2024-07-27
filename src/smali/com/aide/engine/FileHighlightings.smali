.class public Lcom/aide/engine/FileHighlightings;
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
            "Lcom/aide/engine/FileHighlightings;",
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
.field public FH:Ljava/lang/String;

.field public Hw:[Lcom/aide/engine/m;

.field public VH:[I

.field public Zo:[I

.field public gn:[I

.field public tp:I

.field public u7:I

.field public v5:[I


# direct methods
.method static constructor <clinit>()V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0xe6cf9dc688eb3c0L
    .end annotation

    const-wide v8, 0x123ea51299012d03L    # 8.47774199797747E-221

    const/4 v6, 0x0

    :try_start_0
    const-class v0, Lcom/aide/engine/FileHighlightings;

    const-wide v2, 0x6bfad4ca3e8abb51L    # 1.4113581627984473E212

    const-wide v4, 0x6bfad4ca3e8abb51L    # 1.4113581627984473E212

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v0, Lcom/aide/engine/FileHighlightings;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x123ea51299012d03L    # 8.47774199797747E-221

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/engine/i;

    invoke-direct {v0}, Lcom/aide/engine/i;-><init>()V

    sput-object v0, Lcom/aide/engine/FileHighlightings;->CREATOR:Landroid/os/Parcelable$Creator;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/FileHighlightings;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v8, v9, v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, 0x317f98106c340c40L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/FileHighlightings;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x317f98106c340c40L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/FileHighlightings;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method public describeContents()I
    .registers 5

    const-wide v2, 0x4425a017e8d5d268L    # 1.9945878526174455E20

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/FileHighlightings;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x4425a017e8d5d268L    # 1.9945878526174455E20

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/FileHighlightings;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Landroid/os/Parcel;)V
    .registers 10

    const-wide v6, -0x270992196d6f6970L    # -3.619878494914268E120

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/FileHighlightings;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x270992196d6f6970L    # -3.619878494914268E120

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/engine/FileHighlightings;->FH:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/aide/engine/FileHighlightings;->u7:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/aide/engine/FileHighlightings;->tp:I

    iget-object v0, p0, Lcom/aide/engine/FileHighlightings;->Hw:[Lcom/aide/engine/m;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/engine/FileHighlightings;->Hw:[Lcom/aide/engine/m;

    array-length v0, v0

    iget v1, p0, Lcom/aide/engine/FileHighlightings;->u7:I

    if-ge v0, v1, :cond_2

    :cond_1
    iget v0, p0, Lcom/aide/engine/FileHighlightings;->u7:I

    mul-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0x4

    new-array v1, v0, [Lcom/aide/engine/m;

    iput-object v1, p0, Lcom/aide/engine/FileHighlightings;->Hw:[Lcom/aide/engine/m;

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/aide/engine/FileHighlightings;->v5:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/aide/engine/FileHighlightings;->VH:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/aide/engine/FileHighlightings;->Zo:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/aide/engine/FileHighlightings;->gn:[I

    :cond_2
    invoke-static {}, Lcom/aide/engine/m;->values()[Lcom/aide/engine/m;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/aide/engine/FileHighlightings;->u7:I

    if-ge v0, v2, :cond_6

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/aide/engine/FileHighlightings;->Hw:[Lcom/aide/engine/m;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    and-int/lit16 v3, v2, 0x80

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/aide/engine/FileHighlightings;->Hw:[Lcom/aide/engine/m;

    aget-object v2, v1, v2

    aput-object v2, v3, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iget-object v3, p0, Lcom/aide/engine/FileHighlightings;->v5:[I

    iget-object v4, p0, Lcom/aide/engine/FileHighlightings;->VH:[I

    aput v2, v4, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    aput v2, v3, v0

    :try_start_1
    iget-object v2, p0, Lcom/aide/engine/FileHighlightings;->Zo:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    aput v3, v2, v0

    iget-object v2, p0, Lcom/aide/engine/FileHighlightings;->gn:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    aput v3, v2, v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/FileHighlightings;->DW:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v6, v7, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v0

    :cond_5
    :try_start_2
    iget-object v3, p0, Lcom/aide/engine/FileHighlightings;->Hw:[Lcom/aide/engine/m;

    and-int/lit8 v2, v2, 0x7f

    aget-object v2, v1, v2

    aput-object v2, v3, v0

    iget-object v2, p0, Lcom/aide/engine/FileHighlightings;->v5:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v0

    iget-object v2, p0, Lcom/aide/engine/FileHighlightings;->Zo:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v0

    iget-object v2, p0, Lcom/aide/engine/FileHighlightings;->VH:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v0

    iget-object v2, p0, Lcom/aide/engine/FileHighlightings;->gn:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :cond_6
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 12

    const-wide v2, -0x23fdbbcdb084d739L    # -1.659590193844651E135

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Lcom/aide/engine/FileHighlightings;->j6:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, -0x23fdbbcdb084d739L    # -1.659590193844651E135

    invoke-static {v4, v5, p0, p1, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/16 v1, 0x7530

    iget v4, p0, Lcom/aide/engine/FileHighlightings;->u7:I

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/aide/engine/FileHighlightings;->u7:I

    iget-object v1, p0, Lcom/aide/engine/FileHighlightings;->FH:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v1, p0, Lcom/aide/engine/FileHighlightings;->u7:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Lcom/aide/engine/FileHighlightings;->tp:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget v1, p0, Lcom/aide/engine/FileHighlightings;->u7:I

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lcom/aide/engine/FileHighlightings;->Hw:[Lcom/aide/engine/m;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    sget-object v4, Lcom/aide/engine/m;->j6:Lcom/aide/engine/m;

    if-ne v1, v4, :cond_2

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/aide/engine/FileHighlightings;->v5:[I

    aget v4, v4, v0

    iget-object v5, p0, Lcom/aide/engine/FileHighlightings;->Zo:[I

    aget v5, v5, v0

    iget-object v6, p0, Lcom/aide/engine/FileHighlightings;->VH:[I

    aget v6, v6, v0

    iget-object v7, p0, Lcom/aide/engine/FileHighlightings;->gn:[I

    aget v7, v7, v0

    if-ne v4, v6, :cond_4

    const/16 v8, 0x7f

    if-ge v7, v8, :cond_4

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    int-to-byte v1, v5

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    int-to-byte v1, v7

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/FileHighlightings;->DW:Z

    if-eqz v0, :cond_3

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1

    :cond_4
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_5
    return-void
.end method
