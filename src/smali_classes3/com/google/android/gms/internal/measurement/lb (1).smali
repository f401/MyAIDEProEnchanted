.class public abstract Lcom/google/android/gms/internal/measurement/lb;
.super Lcom/google/android/gms/internal/measurement/Va;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/lb$a;,
        Lcom/google/android/gms/internal/measurement/lb$b;,
        Lcom/google/android/gms/internal/measurement/lb$c;,
        Lcom/google/android/gms/internal/measurement/lb$d;,
        Lcom/google/android/gms/internal/measurement/lb$e;
    }
.end annotation


# static fields
.field private static final DW:Z

.field private static final j6:Ljava/util/logging/Logger;


# instance fields
.field FH:Lcom/google/android/gms/internal/measurement/nb;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/google/android/gms/internal/measurement/lb;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/lb;->j6:Ljava/util/logging/Logger;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/_c;->DW()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gms/internal/measurement/lb;->DW:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/Va;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/mb;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/lb;-><init>()V

    return-void
.end method

.method public static DW(D)I
    .registers 2

    const/16 p0, 0x8

    return p0
.end method

.method public static DW(F)I
    .registers 1

    const/4 p0, 0x4

    return p0
.end method

.method public static DW(ID)I
    .registers 3

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/lb;->v5(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static DW(IF)I
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/lb;->v5(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static DW(ILcom/google/android/gms/internal/measurement/Ub;)I
    .registers 4

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/lb;->v5(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    const/4 v1, 0x2

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/measurement/lb;->VH(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x3

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/lb;->j6(ILcom/google/android/gms/internal/measurement/Ub;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method static DW(ILcom/google/android/gms/internal/measurement/lc;Lcom/google/android/gms/internal/measurement/Cc;)I
    .registers 3

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/lb;->v5(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/lb;->j6(Lcom/google/android/gms/internal/measurement/lc;Lcom/google/android/gms/internal/measurement/Cc;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static DW(ILjava/lang/String;)I
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/lb;->v5(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/lb;->j6(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static DW(IZ)I
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/lb;->v5(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static DW(Lcom/google/android/gms/internal/measurement/lc;)I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/lc;->FH()I

    move-result p0

    return p0
.end method

.method public static DW(Z)I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public static DW([B)I
    .registers 2

    array-length p0, p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/lb;->VH(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static EQ(I)I
    .registers 1

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/lb;->Zo(I)I

    move-result p0

    return p0
.end method

.method public static EQ(II)I
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/lb;->v5(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/lb;->Zo(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static FH(ILcom/google/android/gms/internal/measurement/Wa;)I
    .registers 3

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/lb;->v5(I)I

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/Wa;->size()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/lb;->VH(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr p0, v0

    return p0
.end method

.method public static FH(ILcom/google/android/gms/internal/measurement/lc;)I
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/lb;->v5(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/lb;->j6(Lcom/google/android/gms/internal/measurement/lc;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method static FH(ILcom/google/android/gms/internal/measurement/lc;Lcom/google/android/gms/internal/measurement/Cc;)I
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/lb;->v5(I)I

    move-result p0

    check-cast p1, Lcom/google/android/gms/internal/measurement/Oa;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/Oa;->gn()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/measurement/Cc;->FH(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/Oa;->j6(I)V

    :cond_14
    shl-int/lit8 p0, p0, 0x1

    add-int/2addr p0, v0

    return p0
.end method

.method static synthetic FH()Z
    .registers 1

    sget-boolean v0, Lcom/google/android/gms/internal/measurement/lb;->DW:Z

    return v0
.end method

.method public static Hw(IJ)I
    .registers 3

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/lb;->v5(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/lb;->v5(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static Hw(ILcom/google/android/gms/internal/measurement/Wa;)I
    .registers 4

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/lb;->v5(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    const/4 v1, 0x2

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/measurement/lb;->VH(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x3

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/lb;->FH(ILcom/google/android/gms/internal/measurement/Wa;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static Hw(ILcom/google/android/gms/internal/measurement/lc;)I
    .registers 4

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/lb;->v5(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    const/4 v1, 0x2

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/measurement/lb;->VH(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x3

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/lb;->FH(ILcom/google/android/gms/internal/measurement/lc;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static Hw(J)I
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/lb;->v5(J)I

    move-result p0

    return p0
.end method

.method private static J0(I)I
    .registers 2

    shr-int/lit8 v0, p0, 0x1f

    shl-int/lit8 p0, p0, 0x1

    xor-int/2addr p0, v0

    return p0
.end method

.method public static VH(I)I
    .registers 2

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_c

    const/4 p0, 0x2

    return p0

    :cond_c
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_13

    const/4 p0, 0x3

    return p0

    :cond_13
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_1a

    const/4 p0, 0x4

    return p0

    :cond_1a
    const/4 p0, 0x5

    return p0
.end method

.method public static VH(II)I
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/lb;->v5(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/lb;->VH(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static VH(IJ)I
    .registers 3

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/lb;->v5(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static VH(J)I
    .registers 2

    const/16 p0, 0x8

    return p0
.end method

.method public static Zo(I)I
    .registers 1

    if-ltz p0, :cond_7

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/lb;->VH(I)I

    move-result p0

    return p0

    :cond_7
    const/16 p0, 0xa

    return p0
.end method

.method public static Zo(II)I
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/lb;->v5(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/lb;->Zo(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static Zo(IJ)I
    .registers 3

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/lb;->v5(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/lb;->u7(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/lb;->v5(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static Zo(J)I
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/lb;->u7(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/lb;->v5(J)I

    move-result p0

    return p0
.end method

.method public static gn(I)I
    .registers 1

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/lb;->J0(I)I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/lb;->VH(I)I

    move-result p0

    return p0
.end method

.method public static gn(II)I
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/lb;->v5(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/lb;->J0(I)I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/lb;->VH(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static gn(IJ)I
    .registers 3

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/lb;->v5(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static gn(J)I
    .registers 2

    const/16 p0, 0x8

    return p0
.end method

.method public static j6(ILcom/google/android/gms/internal/measurement/Ub;)I
    .registers 3

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/lb;->v5(I)I

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/Ub;->DW()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/lb;->VH(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr p0, v0

    return p0
.end method

.method public static j6(Lcom/google/android/gms/internal/measurement/Ub;)I
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/Ub;->DW()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/lb;->VH(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static j6(Lcom/google/android/gms/internal/measurement/Wa;)I
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/Wa;->size()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/lb;->VH(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static j6(Lcom/google/android/gms/internal/measurement/lc;)I
    .registers 2

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/lc;->FH()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/lb;->VH(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method static j6(Lcom/google/android/gms/internal/measurement/lc;Lcom/google/android/gms/internal/measurement/Cc;)I
    .registers 4

    check-cast p0, Lcom/google/android/gms/internal/measurement/Oa;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/Oa;->gn()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_10

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/measurement/Cc;->FH(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/Oa;->j6(I)V

    :cond_10
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/lb;->VH(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public static j6(Ljava/lang/String;)I
    .registers 2

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/bd;->j6(Ljava/lang/CharSequence;)I

    move-result p0
    :try_end_4
    .catch Lcom/google/android/gms/internal/measurement/fd; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_d

    :catch_5
    move-exception v0

    sget-object v0, Lcom/google/android/gms/internal/measurement/Hb;->j6:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length p0, p0

    :goto_d
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/lb;->VH(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static j6(Ljava/nio/ByteBuffer;)Lcom/google/android/gms/internal/measurement/lb;
    .registers 2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lcom/google/android/gms/internal/measurement/lb$b;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/lb$b;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0

    :cond_c
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-static {}, Lcom/google/android/gms/internal/measurement/_c;->FH()Z

    move-result v0

    if-eqz v0, :cond_24

    new-instance v0, Lcom/google/android/gms/internal/measurement/lb$e;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/lb$e;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0

    :cond_24
    new-instance v0, Lcom/google/android/gms/internal/measurement/lb$d;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/lb$d;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0

    :cond_2a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "ByteBuffer is read-only"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static j6([B)Lcom/google/android/gms/internal/measurement/lb;
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/measurement/lb$a;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/internal/measurement/lb$a;-><init>([BII)V

    return-object v0
.end method

.method public static tp(I)I
    .registers 1

    const/4 p0, 0x4

    return p0
.end method

.method public static tp(II)I
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/lb;->v5(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static u7(I)I
    .registers 1

    const/4 p0, 0x4

    return p0
.end method

.method public static u7(II)I
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/lb;->v5(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method private static u7(J)J
    .registers 5

    const/16 v0, 0x3f

    shr-long v0, p0, v0

    const/4 v2, 0x1

    shl-long/2addr p0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static v5(I)I
    .registers 1

    shl-int/lit8 p0, p0, 0x3

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/lb;->VH(I)I

    move-result p0

    return p0
.end method

.method public static v5(IJ)I
    .registers 3

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/lb;->v5(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/lb;->v5(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static v5(J)I
    .registers 8

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    cmp-long v0, p0, v2

    if-gez v0, :cond_12

    const/16 p0, 0xa

    return p0

    :cond_12
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_21

    const/16 v0, 0x1c

    ushr-long/2addr p0, v0

    const/4 v0, 0x6

    goto :goto_22

    :cond_21
    const/4 v0, 0x2

    :goto_22
    const-wide/32 v4, -0x200000

    and-long/2addr v4, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_2f

    add-int/lit8 v0, v0, 0x2

    const/16 v1, 0xe

    ushr-long/2addr p0, v1

    :cond_2f
    const-wide/16 v4, -0x4000

    and-long/2addr p0, v4

    cmp-long v1, p0, v2

    if-eqz v1, :cond_38

    add-int/lit8 v0, v0, 0x1

    :cond_38
    return v0
.end method

.method public static we(I)I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/lb;->VH(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public abstract DW()I
.end method

.method public abstract DW(I)V
.end method

.method public abstract DW(II)V
.end method

.method public final DW(IJ)V
    .registers 4

    invoke-static {p2, p3}, Lcom/google/android/gms/internal/measurement/lb;->u7(J)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/lb;->j6(IJ)V

    return-void
.end method

.method public abstract DW(ILcom/google/android/gms/internal/measurement/Wa;)V
.end method

.method public abstract DW(ILcom/google/android/gms/internal/measurement/lc;)V
.end method

.method public final DW(J)V
    .registers 3

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/lb;->u7(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/lb;->j6(J)V

    return-void
.end method

.method public abstract DW([BII)V
.end method

.method public final FH(I)V
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/lb;->J0(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/lb;->DW(I)V

    return-void
.end method

.method public abstract FH(II)V
.end method

.method public abstract FH(IJ)V
.end method

.method public abstract FH(J)V
.end method

.method public abstract Hw(I)V
.end method

.method public final Hw(II)V
    .registers 3

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/lb;->J0(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/lb;->FH(II)V

    return-void
.end method

.method public abstract j6()V
.end method

.method public abstract j6(B)V
.end method

.method public final j6(D)V
    .registers 3

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/lb;->FH(J)V

    return-void
.end method

.method public final j6(F)V
    .registers 2

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/lb;->Hw(I)V

    return-void
.end method

.method public abstract j6(I)V
.end method

.method public final j6(ID)V
    .registers 4

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/lb;->FH(IJ)V

    return-void
.end method

.method public final j6(IF)V
    .registers 3

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/lb;->v5(II)V

    return-void
.end method

.method public abstract j6(II)V
.end method

.method public abstract j6(IJ)V
.end method

.method public abstract j6(ILcom/google/android/gms/internal/measurement/Wa;)V
.end method

.method public abstract j6(ILcom/google/android/gms/internal/measurement/lc;)V
.end method

.method abstract j6(ILcom/google/android/gms/internal/measurement/lc;Lcom/google/android/gms/internal/measurement/Cc;)V
.end method

.method public abstract j6(ILjava/lang/String;)V
.end method

.method public abstract j6(IZ)V
.end method

.method public abstract j6(J)V
.end method

.method final j6(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/fd;)V
    .registers 9

    sget-object v0, Lcom/google/android/gms/internal/measurement/lb;->j6:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "com.google.protobuf.CodedOutputStream"

    const-string v3, "inefficientWriteStringNoTag"

    const-string v4, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p2, Lcom/google/android/gms/internal/measurement/Hb;->j6:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    :try_start_14
    array-length p2, p1

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/lb;->DW(I)V

    array-length p2, p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/internal/measurement/Va;->j6([BII)V
    :try_end_1d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_14 .. :try_end_1d} :catch_20
    .catch Lcom/google/android/gms/internal/measurement/lb$c; {:try_start_14 .. :try_end_1d} :catch_1e

    return-void

    :catch_1e
    move-exception p1

    throw p1

    :catch_20
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/measurement/lb$c;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/measurement/lb$c;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final j6(Z)V
    .registers 2

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/lb;->j6(B)V

    return-void
.end method

.method public abstract v5(II)V
.end method
