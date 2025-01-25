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
            "Landroid/os/Parcelable$Creator<",
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
    .registers 6
    .annotation runtime Labcd/su;
        method = -0xe6cf9dc688eb3c0L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x123ea51299012d03L  # 8.47774199797747E-221

    :try_start_6
    const-class v3, Lcom/aide/engine/FileHighlightings;

    const-wide v4, 0x6bfad4ca3e8abb51L  # 1.4113581627984473E212

    invoke-static {v3, v4, v5, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v3, Lcom/aide/engine/FileHighlightings;->j6:Z

    if-eqz v3, :cond_17

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_17
    new-instance v3, Lcom/aide/engine/i;

    invoke-direct {v3}, Lcom/aide/engine/i;-><init>()V

    sput-object v3, Lcom/aide/engine/FileHighlightings;->CREATOR:Landroid/os/Parcelable$Creator;
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_1f

    return-void

    :catchall_1f
    move-exception v3

    sget-boolean v4, Lcom/aide/engine/FileHighlightings;->DW:Z

    if-eqz v4, :cond_27

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_27
    throw v3
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x317f98106c340c40L

    :try_start_6
    sget-boolean v3, Lcom/aide/engine/FileHighlightings;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Lcom/aide/engine/FileHighlightings;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method


# virtual methods
.method public describeContents()I
    .registers 5

    const-wide v0, 0x4425a017e8d5d268L  # 1.9945878526174455E20

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/FileHighlightings;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x0

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/FileHighlightings;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public j6(Landroid/os/Parcel;)V
    .registers 9

    const-wide v0, -0x270992196d6f6970L  # -3.619878494914268E120

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/FileHighlightings;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/aide/engine/FileHighlightings;->FH:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/aide/engine/FileHighlightings;->u7:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/aide/engine/FileHighlightings;->tp:I

    iget-object v2, p0, Lcom/aide/engine/FileHighlightings;->Hw:[Lcom/aide/engine/m;

    if-eqz v2, :cond_27

    array-length v2, v2

    iget v3, p0, Lcom/aide/engine/FileHighlightings;->u7:I

    if-ge v2, v3, :cond_41

    :cond_27
    iget v2, p0, Lcom/aide/engine/FileHighlightings;->u7:I

    mul-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0x4

    new-array v3, v2, [Lcom/aide/engine/m;

    iput-object v3, p0, Lcom/aide/engine/FileHighlightings;->Hw:[Lcom/aide/engine/m;

    new-array v3, v2, [I

    iput-object v3, p0, Lcom/aide/engine/FileHighlightings;->v5:[I

    new-array v3, v2, [I

    iput-object v3, p0, Lcom/aide/engine/FileHighlightings;->VH:[I

    new-array v3, v2, [I

    iput-object v3, p0, Lcom/aide/engine/FileHighlightings;->Zo:[I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/aide/engine/FileHighlightings;->gn:[I

    :cond_41
    invoke-static {}, Lcom/aide/engine/m;->values()[Lcom/aide/engine/m;

    move-result-object v2

    const/4 v3, 0x0

    :goto_46
    iget v4, p0, Lcom/aide/engine/FileHighlightings;->u7:I

    if-ge v3, v4, :cond_a8

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v4

    if-nez v4, :cond_56

    iget-object v4, p0, Lcom/aide/engine/FileHighlightings;->Hw:[Lcom/aide/engine/m;

    const/4 v5, 0x0

    aput-object v5, v4, v3

    goto :goto_a5

    :cond_56
    and-int/lit16 v5, v4, 0x80

    if-nez v5, :cond_7d

    iget-object v5, p0, Lcom/aide/engine/FileHighlightings;->Hw:[Lcom/aide/engine/m;

    aget-object v4, v2, v4

    aput-object v4, v5, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iget-object v5, p0, Lcom/aide/engine/FileHighlightings;->v5:[I

    iget-object v6, p0, Lcom/aide/engine/FileHighlightings;->VH:[I

    aput v4, v6, v3
    :try_end_6a
    .catchall {:try_start_5 .. :try_end_6a} :catchall_a9

    aput v4, v5, v3

    :try_start_6c
    iget-object v4, p0, Lcom/aide/engine/FileHighlightings;->Zo:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v5

    aput v5, v4, v3

    iget-object v4, p0, Lcom/aide/engine/FileHighlightings;->gn:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v5

    aput v5, v4, v3

    goto :goto_a5

    :cond_7d
    iget-object v5, p0, Lcom/aide/engine/FileHighlightings;->Hw:[Lcom/aide/engine/m;

    and-int/lit8 v4, v4, 0x7f

    aget-object v4, v2, v4

    aput-object v4, v5, v3

    iget-object v4, p0, Lcom/aide/engine/FileHighlightings;->v5:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    aput v5, v4, v3

    iget-object v4, p0, Lcom/aide/engine/FileHighlightings;->Zo:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    aput v5, v4, v3

    iget-object v4, p0, Lcom/aide/engine/FileHighlightings;->VH:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    aput v5, v4, v3

    iget-object v4, p0, Lcom/aide/engine/FileHighlightings;->gn:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    aput v5, v4, v3
    :try_end_a5
    .catchall {:try_start_6c .. :try_end_a5} :catchall_a9

    :goto_a5
    add-int/lit8 v3, v3, 0x1

    goto :goto_46

    :cond_a8
    return-void

    :catchall_a9
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/FileHighlightings;->DW:Z

    if-eqz v3, :cond_b1

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_b1
    goto :goto_b3

    :goto_b2
    throw v2

    :goto_b3
    goto :goto_b2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 11

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/FileHighlightings;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x23fdbbcdb084d739L  # -1.659590193844651E135

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iget v0, p0, Lcom/aide/engine/FileHighlightings;->u7:I

    const/16 v1, 0x7530

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/aide/engine/FileHighlightings;->u7:I

    iget-object v0, p0, Lcom/aide/engine/FileHighlightings;->FH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/aide/engine/FileHighlightings;->u7:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/aide/engine/FileHighlightings;->tp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2c
    iget v2, p0, Lcom/aide/engine/FileHighlightings;->u7:I

    if-ge v1, v2, :cond_82

    iget-object v2, p0, Lcom/aide/engine/FileHighlightings;->Hw:[Lcom/aide/engine/m;

    aget-object v2, v2, v1

    if-eqz v2, :cond_7c

    sget-object v3, Lcom/aide/engine/m;->j6:Lcom/aide/engine/m;

    if-ne v2, v3, :cond_3b

    goto :goto_7c

    :cond_3b
    iget-object v3, p0, Lcom/aide/engine/FileHighlightings;->v5:[I

    aget v3, v3, v1

    iget-object v4, p0, Lcom/aide/engine/FileHighlightings;->Zo:[I

    aget v4, v4, v1

    iget-object v5, p0, Lcom/aide/engine/FileHighlightings;->VH:[I

    aget v5, v5, v1

    iget-object v6, p0, Lcom/aide/engine/FileHighlightings;->gn:[I

    aget v6, v6, v1

    if-ne v3, v5, :cond_65

    const/16 v7, 0x7f

    if-ge v6, v7, :cond_65

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    int-to-byte v2, v4

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    int-to-byte v2, v6

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_7f

    :cond_65
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7f

    :cond_7c
    :goto_7c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V
    :try_end_7f
    .catchall {:try_start_0 .. :try_end_7f} :catchall_83

    :goto_7f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    :cond_82
    return-void

    :catchall_83
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/FileHighlightings;->DW:Z

    if-eqz v1, :cond_98

    const-wide v2, -0x23fdbbcdb084d739L  # -1.659590193844651E135

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_98
    goto :goto_9a

    :goto_99
    throw v0

    :goto_9a
    goto :goto_99
.end method
