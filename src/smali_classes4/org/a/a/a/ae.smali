.class public Lorg/a/a/a/ae;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/a/a/a/ad;


# static fields
.field public static final a:Lorg/a/a/a/ae;

.field private static final b:[Ljava/lang/String;


# instance fields
.field private final c:[Ljava/lang/String;

.field private final d:[Ljava/lang/String;

.field private final e:[Ljava/lang/String;

.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lorg/a/a/a/ae;->b:[Ljava/lang/String;

    new-instance v0, Lorg/a/a/a/ae;

    sget-object v1, Lorg/a/a/a/ae;->b:[Ljava/lang/String;

    sget-object v2, Lorg/a/a/a/ae;->b:[Ljava/lang/String;

    sget-object v3, Lorg/a/a/a/ae;->b:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lorg/a/a/a/ae;-><init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/a/a/a/ae;->a:Lorg/a/a/a/ae;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/a/a/a/ae;-><init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_25

    :goto_5
    iput-object p1, p0, Lorg/a/a/a/ae;->c:[Ljava/lang/String;

    if-eqz p2, :cond_28

    :goto_9
    iput-object p2, p0, Lorg/a/a/a/ae;->d:[Ljava/lang/String;

    if-eqz p3, :cond_2b

    :goto_d
    iput-object p3, p0, Lorg/a/a/a/ae;->e:[Ljava/lang/String;

    iget-object v0, p0, Lorg/a/a/a/ae;->e:[Ljava/lang/String;

    array-length v0, v0

    iget-object v1, p0, Lorg/a/a/a/ae;->c:[Ljava/lang/String;

    array-length v1, v1

    iget-object v2, p0, Lorg/a/a/a/ae;->d:[Ljava/lang/String;

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/a/a/a/ae;->f:I

    return-void

    :cond_25
    sget-object p1, Lorg/a/a/a/ae;->b:[Ljava/lang/String;

    goto :goto_5

    :cond_28
    sget-object p2, Lorg/a/a/a/ae;->b:[Ljava/lang/String;

    goto :goto_9

    :cond_2b
    sget-object p3, Lorg/a/a/a/ae;->b:[Ljava/lang/String;

    goto :goto_d
.end method

.method public static a([Ljava/lang/String;)Lorg/a/a/a/ad;
    .registers 8

    const/4 v3, 0x0

    const/4 v6, 0x0

    if-eqz p0, :cond_7

    array-length v0, p0

    if-nez v0, :cond_a

    :cond_7
    sget-object v0, Lorg/a/a/a/ae;->a:Lorg/a/a/a/ae;

    :goto_9
    return-object v0

    :cond_a
    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    move v2, v3

    :goto_19
    array-length v4, p0

    if-lt v2, v4, :cond_23

    new-instance v2, Lorg/a/a/a/ae;

    invoke-direct {v2, v0, v1, p0}, Lorg/a/a/a/ae;-><init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_9

    :cond_23
    aget-object v4, p0, v2

    if-nez v4, :cond_2a

    :goto_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_2a
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_44

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x27

    if-ne v4, v5, :cond_3b

    aput-object v6, v1, v2

    goto :goto_27

    :cond_3b
    invoke-static {v4}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_44

    aput-object v6, v0, v2

    goto :goto_27

    :cond_44
    aput-object v6, v0, v2

    aput-object v6, v1, v2

    goto :goto_27
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .registers 3

    if-ltz p1, :cond_c

    iget-object v0, p0, Lorg/a/a/a/ae;->c:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_c

    iget-object v0, p0, Lorg/a/a/a/ae;->c:[Ljava/lang/String;

    aget-object v0, v0, p1

    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public b(I)Ljava/lang/String;
    .registers 3

    if-ltz p1, :cond_c

    iget-object v0, p0, Lorg/a/a/a/ae;->d:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_c

    iget-object v0, p0, Lorg/a/a/a/ae;->d:[Ljava/lang/String;

    aget-object v0, v0, p1

    :goto_b
    return-object v0

    :cond_c
    const/4 v0, -0x1

    if-ne p1, v0, :cond_12

    const-string v0, "EOF"

    goto :goto_b

    :cond_12
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public c(I)Ljava/lang/String;
    .registers 3

    if-ltz p1, :cond_e

    iget-object v0, p0, Lorg/a/a/a/ae;->e:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_e

    iget-object v0, p0, Lorg/a/a/a/ae;->e:[Ljava/lang/String;

    aget-object v0, v0, p1

    if-eqz v0, :cond_e

    :cond_d
    :goto_d
    return-object v0

    :cond_e
    invoke-virtual {p0, p1}, Lorg/a/a/a/ae;->a(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    invoke-virtual {p0, p1}, Lorg/a/a/a/ae;->b(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d
.end method
