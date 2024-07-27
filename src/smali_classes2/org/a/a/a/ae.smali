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

    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lorg/a/a/a/ae;->c:[Ljava/lang/String;

    if-eqz p2, :cond_1

    :goto_1
    iput-object p2, p0, Lorg/a/a/a/ae;->d:[Ljava/lang/String;

    if-eqz p3, :cond_2

    :goto_2
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

    :cond_0
    sget-object p1, Lorg/a/a/a/ae;->b:[Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object p2, Lorg/a/a/a/ae;->b:[Ljava/lang/String;

    goto :goto_1

    :cond_2
    sget-object p3, Lorg/a/a/a/ae;->b:[Ljava/lang/String;

    goto :goto_2
.end method

.method public static a([Ljava/lang/String;)Lorg/a/a/a/ad;
    .registers 8

    const/4 v3, 0x0

    const/4 v6, 0x0

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lorg/a/a/a/ae;->a:Lorg/a/a/a/ae;

    :goto_0
    return-object v0

    :cond_1
    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    move v2, v3

    :goto_1
    array-length v4, p0

    if-lt v2, v4, :cond_2

    new-instance v2, Lorg/a/a/a/ae;

    invoke-direct {v2, v0, v1, p0}, Lorg/a/a/a/ae;-><init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0

    :cond_2
    aget-object v4, p0, v2

    if-nez v4, :cond_3

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x27

    if-ne v4, v5, :cond_4

    aput-object v6, v1, v2

    goto :goto_2

    :cond_4
    invoke-static {v4}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_5

    aput-object v6, v0, v2

    goto :goto_2

    :cond_5
    aput-object v6, v0, v2

    aput-object v6, v1, v2

    goto :goto_2
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .registers 3

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/a/a/a/ae;->c:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/a/a/a/ae;->c:[Ljava/lang/String;

    aget-object v0, v0, p1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(I)Ljava/lang/String;
    .registers 3

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/a/a/a/ae;->d:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/a/a/a/ae;->d:[Ljava/lang/String;

    aget-object v0, v0, p1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const-string v0, "EOF"

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(I)Ljava/lang/String;
    .registers 3

    if-ltz p1, :cond_1

    iget-object v0, p0, Lorg/a/a/a/ae;->e:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lorg/a/a/a/ae;->e:[Ljava/lang/String;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/a/a/a/ae;->a(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/a/a/a/ae;->b(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
