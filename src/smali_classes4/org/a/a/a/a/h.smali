.class public Lorg/a/a/a/a/h;
.super Ljava/lang/Object;


# static fields
.field public static final a:I

.field public static final b:Ljava/util/UUID;

.field private static final c:Ljava/util/UUID;

.field private static final d:Ljava/util/UUID;

.field private static final e:Ljava/util/UUID;

.field private static final f:Ljava/util/UUID;

.field private static final g:Ljava/util/List;

.field private static i:[I


# instance fields
.field private final h:Lorg/a/a/a/a/g;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x3

    sput v0, Lorg/a/a/a/a/h;->a:I

    const-string v0, "33761B2D-78BB-4A43-8B0B-4F5BEE8AACF3"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lorg/a/a/a/a/h;->c:Ljava/util/UUID;

    const-string v0, "1DA0C57D-6C06-438A-9B27-10BCB3CE0F61"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lorg/a/a/a/a/h;->d:Ljava/util/UUID;

    const-string v0, "AADB8D7E-AEEF-4415-AD2B-8204D6CF042E"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lorg/a/a/a/a/h;->e:Ljava/util/UUID;

    const-string v0, "59627784-3BE5-417A-B9EB-8131A7286089"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lorg/a/a/a/a/h;->f:Ljava/util/UUID;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/a/a/a/a/h;->g:Ljava/util/List;

    sget-object v0, Lorg/a/a/a/a/h;->g:Ljava/util/List;

    sget-object v1, Lorg/a/a/a/a/h;->c:Ljava/util/UUID;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/a/a/a/a/h;->g:Ljava/util/List;

    sget-object v1, Lorg/a/a/a/a/h;->d:Ljava/util/UUID;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/a/a/a/a/h;->g:Ljava/util/List;

    sget-object v1, Lorg/a/a/a/a/h;->e:Ljava/util/UUID;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/a/a/a/a/h;->g:Ljava/util/List;

    sget-object v1, Lorg/a/a/a/a/h;->f:Ljava/util/UUID;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/a/a/a/a/h;->f:Ljava/util/UUID;

    sput-object v0, Lorg/a/a/a/a/h;->b:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-static {}, Lorg/a/a/a/a/g;->a()Lorg/a/a/a/a/g;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/a/a/a/a/h;-><init>(Lorg/a/a/a/a/g;)V

    return-void
.end method

.method public constructor <init>(Lorg/a/a/a/a/g;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_9

    invoke-static {}, Lorg/a/a/a/a/g;->a()Lorg/a/a/a/a/g;

    move-result-object p1

    :cond_9
    iput-object p1, p0, Lorg/a/a/a/a/h;->h:Lorg/a/a/a/a/g;

    return-void
.end method

.method protected static a(C)I
    .registers 1

    return p0
.end method

.method protected static a([CI)I
    .registers 4

    aget-char v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    aget-char v1, p0, v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    return v0
.end method

.method private a([CILjava/util/List;Lorg/a/a/a/a/k;)I
    .registers 15

    const/4 v1, 0x0

    add-int/lit8 v2, p2, 0x1

    aget-char v0, p1, p2

    invoke-static {v0}, Lorg/a/a/a/a/h;->a(C)I

    move-result v4

    move v3, v1

    :goto_a
    if-lt v3, v4, :cond_d

    return v2

    :cond_d
    aget-char v0, p1, v2

    invoke-static {v0}, Lorg/a/a/a/a/h;->a(C)I

    move-result v5

    add-int/lit8 v2, v2, 0x1

    new-instance v6, Lorg/a/a/a/c/j;

    new-array v0, v1, [I

    invoke-direct {v6, v0}, Lorg/a/a/a/c/j;-><init>([I)V

    invoke-interface {p3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-char v0, p1, v2

    invoke-static {v0}, Lorg/a/a/a/a/h;->a(C)I

    move-result v0

    if-eqz v0, :cond_37

    const/4 v0, 0x1

    :goto_28
    if-eqz v0, :cond_2e

    const/4 v0, -0x1

    invoke-virtual {v6, v0}, Lorg/a/a/a/c/j;->b(I)V

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    move v0, v1

    :goto_31
    if-lt v0, v5, :cond_39

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_a

    :cond_37
    move v0, v1

    goto :goto_28

    :cond_39
    invoke-interface {p4, p1, v2}, Lorg/a/a/a/a/k;->a([CI)I

    move-result v7

    invoke-interface {p4}, Lorg/a/a/a/a/k;->a()I

    move-result v8

    add-int/2addr v2, v8

    invoke-interface {p4, p1, v2}, Lorg/a/a/a/a/k;->a([CI)I

    move-result v8

    invoke-interface {p4}, Lorg/a/a/a/a/k;->a()I

    move-result v9

    add-int/2addr v2, v9

    invoke-virtual {v6, v7, v8}, Lorg/a/a/a/c/j;->b(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_31
.end method

.method static a(Lorg/a/a/a/a/l;)Lorg/a/a/a/a/k;
    .registers 2

    sget-object v0, Lorg/a/a/a/a/l;->a:Lorg/a/a/a/a/l;

    if-ne p0, v0, :cond_a

    new-instance v0, Lorg/a/a/a/a/i;

    invoke-direct {v0}, Lorg/a/a/a/a/i;-><init>()V

    :goto_9
    return-object v0

    :cond_a
    new-instance v0, Lorg/a/a/a/a/j;

    invoke-direct {v0}, Lorg/a/a/a/a/j;-><init>()V

    goto :goto_9
.end method

.method protected static a(Ljava/util/UUID;Ljava/util/UUID;)Z
    .registers 5

    const/4 v0, 0x0

    sget-object v1, Lorg/a/a/a/a/h;->g:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    sget-object v2, Lorg/a/a/a/a/h;->g:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-lt v2, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_9
.end method

.method static synthetic a()[I
    .registers 3

    sget-object v0, Lorg/a/a/a/a/h;->i:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lorg/a/a/a/a/af;->a()[Lorg/a/a/a/a/af;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lorg/a/a/a/a/af;->a:Lorg/a/a/a/a/af;

    invoke-virtual {v1}, Lorg/a/a/a/a/af;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_58

    :goto_15
    :try_start_15
    sget-object v1, Lorg/a/a/a/a/af;->b:Lorg/a/a/a/a/af;

    invoke-virtual {v1}, Lorg/a/a/a/a/af;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_5a

    :goto_1e
    :try_start_1e
    sget-object v1, Lorg/a/a/a/a/af;->c:Lorg/a/a/a/a/af;

    invoke-virtual {v1}, Lorg/a/a/a/a/af;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_5c

    :goto_27
    :try_start_27
    sget-object v1, Lorg/a/a/a/a/af;->d:Lorg/a/a/a/a/af;

    invoke-virtual {v1}, Lorg/a/a/a/a/af;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_30} :catch_5e

    :goto_30
    :try_start_30
    sget-object v1, Lorg/a/a/a/a/af;->e:Lorg/a/a/a/a/af;

    invoke-virtual {v1}, Lorg/a/a/a/a/af;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_39} :catch_60

    :goto_39
    :try_start_39
    sget-object v1, Lorg/a/a/a/a/af;->f:Lorg/a/a/a/a/af;

    invoke-virtual {v1}, Lorg/a/a/a/a/af;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_42
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_42} :catch_62

    :goto_42
    :try_start_42
    sget-object v1, Lorg/a/a/a/a/af;->g:Lorg/a/a/a/a/af;

    invoke-virtual {v1}, Lorg/a/a/a/a/af;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_42 .. :try_end_4b} :catch_64

    :goto_4b
    :try_start_4b
    sget-object v1, Lorg/a/a/a/a/af;->h:Lorg/a/a/a/a/af;

    invoke-virtual {v1}, Lorg/a/a/a/a/af;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_55
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_55} :catch_66

    :goto_55
    sput-object v0, Lorg/a/a/a/a/h;->i:[I

    goto :goto_4

    :catch_58
    move-exception v1

    goto :goto_15

    :catch_5a
    move-exception v1

    goto :goto_1e

    :catch_5c
    move-exception v1

    goto :goto_27

    :catch_5e
    move-exception v1

    goto :goto_30

    :catch_60
    move-exception v1

    goto :goto_39

    :catch_62
    move-exception v1

    goto :goto_42

    :catch_64
    move-exception v1

    goto :goto_4b

    :catch_66
    move-exception v1

    goto :goto_55
.end method

.method protected static b([CI)J
    .registers 7

    invoke-static {p0, p1}, Lorg/a/a/a/a/h;->a([CI)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x2

    invoke-static {p0, v2}, Lorg/a/a/a/a/h;->a([CI)I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method protected static c([CI)Ljava/util/UUID;
    .registers 8

    invoke-static {p0, p1}, Lorg/a/a/a/a/h;->b([CI)J

    move-result-wide v0

    new-instance v2, Ljava/util/UUID;

    add-int/lit8 v3, p1, 0x4

    invoke-static {p0, v3}, Lorg/a/a/a/a/h;->b([CI)J

    move-result-wide v4

    invoke-direct {v2, v4, v5, v0, v1}, Ljava/util/UUID;-><init>(JJ)V

    return-object v2
.end method


# virtual methods
.method public a([C)Lorg/a/a/a/a/a;
    .registers 16

    invoke-virtual {p1}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, [C

    const/4 v0, 0x1

    :goto_8
    array-length v1, v9

    if-lt v0, v1, :cond_44

    const/4 v0, 0x0

    aget-char v0, v9, v0

    invoke-static {v0}, Lorg/a/a/a/a/h;->a(C)I

    move-result v0

    sget v1, Lorg/a/a/a/a/h;->a:I

    if-eq v0, v1, :cond_4e

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "Could not deserialize ATN with version %d (expected %d)."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    sget v4, Lorg/a/a/a/a/h;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/io/InvalidClassException;

    const-class v3, Lorg/a/a/a/a/a;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_44
    aget-char v1, v9, v0

    add-int/lit8 v1, v1, -0x2

    int-to-char v1, v1

    aput-char v1, v9, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_4e
    const/4 v0, 0x1

    invoke-static {v9, v0}, Lorg/a/a/a/a/h;->c([CI)Ljava/util/UUID;

    move-result-object v6

    sget-object v0, Lorg/a/a/a/a/h;->g:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_81

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "Could not deserialize ATN with UUID %s (expected %s or a legacy UUID)."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v6, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lorg/a/a/a/a/h;->b:Ljava/util/UUID;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/io/InvalidClassException;

    const-class v3, Lorg/a/a/a/a/a;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_81
    sget-object v0, Lorg/a/a/a/a/h;->d:Ljava/util/UUID;

    invoke-static {v0, v6}, Lorg/a/a/a/a/h;->a(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v5

    sget-object v0, Lorg/a/a/a/a/h;->e:Ljava/util/UUID;

    invoke-static {v0, v6}, Lorg/a/a/a/a/h;->a(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v12

    new-instance v1, Lorg/a/a/a/a/a;

    invoke-static {}, Lorg/a/a/a/a/o;->a()[Lorg/a/a/a/a/o;

    move-result-object v0

    const/16 v2, 0x9

    aget-char v2, v9, v2

    invoke-static {v2}, Lorg/a/a/a/a/h;->a(C)I

    move-result v2

    aget-object v0, v0, v2

    const/16 v2, 0xa

    aget-char v2, v9, v2

    invoke-static {v2}, Lorg/a/a/a/a/h;->a(C)I

    move-result v2

    invoke-direct {v1, v0, v2}, Lorg/a/a/a/a/a;-><init>(Lorg/a/a/a/a/o;I)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/16 v0, 0xb

    aget-char v0, v9, v0

    invoke-static {v0}, Lorg/a/a/a/a/h;->a(C)I

    move-result v10

    const/4 v0, 0x0

    const/16 v2, 0xc

    move v4, v0

    move v3, v2

    :goto_bf
    if-lt v4, v10, :cond_1cf

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_c5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_230

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_cf
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_24f

    aget-char v0, v9, v3

    invoke-static {v0}, Lorg/a/a/a/a/h;->a(C)I

    move-result v4

    add-int/lit8 v2, v3, 0x1

    const/4 v0, 0x0

    move v3, v0

    :goto_df
    if-lt v3, v4, :cond_26e

    if-eqz v5, :cond_5d8

    aget-char v0, v9, v2

    invoke-static {v0}, Lorg/a/a/a/a/h;->a(C)I

    move-result v4

    add-int/lit8 v2, v2, 0x1

    const/4 v0, 0x0

    move v3, v0

    :goto_ed
    if-lt v3, v4, :cond_286

    move v0, v2

    :goto_f0
    aget-char v2, v9, v0

    invoke-static {v2}, Lorg/a/a/a/a/h;->a(C)I

    move-result v7

    iget-object v2, v1, Lorg/a/a/a/a/a;->f:Lorg/a/a/a/a/o;

    sget-object v3, Lorg/a/a/a/a/o;->a:Lorg/a/a/a/a/o;

    if-ne v2, v3, :cond_100

    new-array v2, v7, [I

    iput-object v2, v1, Lorg/a/a/a/a/a;->h:[I

    :cond_100
    new-array v2, v7, [Lorg/a/a/a/a/ba;

    iput-object v2, v1, Lorg/a/a/a/a/a;->c:[Lorg/a/a/a/a/ba;

    const/4 v2, 0x0

    add-int/lit8 v0, v0, 0x1

    move v4, v2

    move v5, v0

    :goto_109
    if-lt v4, v7, :cond_29e

    new-array v0, v7, [Lorg/a/a/a/a/bb;

    iput-object v0, v1, Lorg/a/a/a/a/a;->d:[Lorg/a/a/a/a/bb;

    iget-object v0, v1, Lorg/a/a/a/a/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_115
    :goto_115
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2df

    aget-char v0, v9, v5

    invoke-static {v0}, Lorg/a/a/a/a/h;->a(C)I

    move-result v4

    add-int/lit8 v0, v5, 0x1

    const/4 v3, 0x0

    move v2, v0

    :goto_125
    if-lt v3, v4, :cond_2fc

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lorg/a/a/a/a/l;->a:Lorg/a/a/a/a/l;

    invoke-static {v0}, Lorg/a/a/a/a/h;->a(Lorg/a/a/a/a/l;)Lorg/a/a/a/a/k;

    move-result-object v0

    invoke-direct {p0, v9, v2, v8, v0}, Lorg/a/a/a/a/h;->a([CILjava/util/List;Lorg/a/a/a/a/k;)I

    move-result v0

    sget-object v2, Lorg/a/a/a/a/h;->f:Ljava/util/UUID;

    invoke-static {v2, v6}, Lorg/a/a/a/a/h;->a(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v2

    if-eqz v2, :cond_148

    sget-object v2, Lorg/a/a/a/a/l;->b:Lorg/a/a/a/a/l;

    invoke-static {v2}, Lorg/a/a/a/a/h;->a(Lorg/a/a/a/a/l;)Lorg/a/a/a/a/k;

    move-result-object v2

    invoke-direct {p0, v9, v0, v8, v2}, Lorg/a/a/a/a/h;->a([CILjava/util/List;Lorg/a/a/a/a/k;)I

    move-result v0

    :cond_148
    aget-char v2, v9, v0

    invoke-static {v2}, Lorg/a/a/a/a/h;->a(C)I

    move-result v13

    const/4 v2, 0x0

    add-int/lit8 v0, v0, 0x1

    move v10, v2

    move v11, v0

    :goto_153
    if-lt v10, v13, :cond_316

    iget-object v0, v1, Lorg/a/a/a/a/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_15b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_35c

    iget-object v0, v1, Lorg/a/a/a/a/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_167
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3a0

    aget-char v0, v9, v11

    invoke-static {v0}, Lorg/a/a/a/a/h;->a(C)I

    move-result v4

    add-int/lit8 v3, v11, 0x1

    const/4 v0, 0x1

    move v2, v0

    :goto_177
    if-le v2, v4, :cond_410

    iget-object v0, v1, Lorg/a/a/a/a/a;->f:Lorg/a/a/a/a/o;

    sget-object v2, Lorg/a/a/a/a/o;->a:Lorg/a/a/a/a/o;

    if-ne v0, v2, :cond_193

    if-eqz v12, :cond_465

    add-int/lit8 v0, v3, 0x1

    aget-char v2, v9, v3

    invoke-static {v2}, Lorg/a/a/a/a/h;->a(C)I

    move-result v2

    new-array v2, v2, [Lorg/a/a/a/a/ad;

    iput-object v2, v1, Lorg/a/a/a/a/a;->i:[Lorg/a/a/a/a/ad;

    const/4 v2, 0x0

    :goto_18e
    iget-object v3, v1, Lorg/a/a/a/a/a;->i:[Lorg/a/a/a/a/ad;

    array-length v3, v3

    if-lt v2, v3, :cond_42e

    :cond_193
    :goto_193
    invoke-virtual {p0, v1}, Lorg/a/a/a/a/h;->a(Lorg/a/a/a/a/a;)V

    iget-object v0, p0, Lorg/a/a/a/a/h;->h:Lorg/a/a/a/a/g;

    invoke-virtual {v0}, Lorg/a/a/a/a/g;->c()Z

    move-result v0

    if-eqz v0, :cond_1a1

    invoke-virtual {p0, v1}, Lorg/a/a/a/a/h;->b(Lorg/a/a/a/a/a;)V

    :cond_1a1
    iget-object v0, p0, Lorg/a/a/a/a/h;->h:Lorg/a/a/a/a/g;

    invoke-virtual {v0}, Lorg/a/a/a/a/g;->d()Z

    move-result v0

    if-eqz v0, :cond_1ce

    iget-object v0, v1, Lorg/a/a/a/a/a;->f:Lorg/a/a/a/a/o;

    sget-object v2, Lorg/a/a/a/a/o;->b:Lorg/a/a/a/a/o;

    if-ne v0, v2, :cond_1ce

    iget-object v0, v1, Lorg/a/a/a/a/a;->c:[Lorg/a/a/a/a/ba;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, v1, Lorg/a/a/a/a/a;->h:[I

    const/4 v0, 0x0

    :goto_1b7
    iget-object v2, v1, Lorg/a/a/a/a/a;->c:[Lorg/a/a/a/a/ba;

    array-length v2, v2

    if-lt v0, v2, :cond_4c2

    const/4 v0, 0x0

    move v3, v0

    :goto_1be
    iget-object v0, v1, Lorg/a/a/a/a/a;->c:[Lorg/a/a/a/a/ba;

    array-length v0, v0

    if-lt v3, v0, :cond_4cf

    iget-object v0, p0, Lorg/a/a/a/a/h;->h:Lorg/a/a/a/a/g;

    invoke-virtual {v0}, Lorg/a/a/a/a/g;->c()Z

    move-result v0

    if-eqz v0, :cond_1ce

    invoke-virtual {p0, v1}, Lorg/a/a/a/a/h;->b(Lorg/a/a/a/a/a;)V

    :cond_1ce
    return-object v1

    :cond_1cf
    add-int/lit8 v0, v3, 0x1

    aget-char v2, v9, v3

    invoke-static {v2}, Lorg/a/a/a/a/h;->a(C)I

    move-result v11

    if-nez v11, :cond_1e3

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/a/a/a/a/a;->a(Lorg/a/a/a/a/n;)V

    :goto_1dd
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v3, v0

    goto/16 :goto_bf

    :cond_1e3
    add-int/lit8 v3, v0, 0x1

    aget-char v0, v9, v0

    invoke-static {v0}, Lorg/a/a/a/a/h;->a(C)I

    move-result v0

    const v2, 0xffff

    if-ne v0, v2, :cond_1f1

    const/4 v0, -0x1

    :cond_1f1
    invoke-virtual {p0, v11, v0}, Lorg/a/a/a/a/h;->a(II)Lorg/a/a/a/a/n;

    move-result-object v2

    const/16 v0, 0xc

    if-ne v11, v0, :cond_214

    aget-char v0, v9, v3

    invoke-static {v0}, Lorg/a/a/a/a/h;->a(C)I

    move-result v11

    new-instance v13, Lorg/a/a/a/c/m;

    move-object v0, v2

    check-cast v0, Lorg/a/a/a/a/ap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v13, v0, v11}, Lorg/a/a/a/c/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v3, 0x1

    :goto_210
    invoke-virtual {v1, v2}, Lorg/a/a/a/a/a;->a(Lorg/a/a/a/a/n;)V

    goto :goto_1dd

    :cond_214
    instance-of v0, v2, Lorg/a/a/a/a/w;

    if-eqz v0, :cond_5d5

    aget-char v0, v9, v3

    invoke-static {v0}, Lorg/a/a/a/a/h;->a(C)I

    move-result v11

    new-instance v13, Lorg/a/a/a/c/m;

    move-object v0, v2

    check-cast v0, Lorg/a/a/a/a/w;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v13, v0, v11}, Lorg/a/a/a/c/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v3, 0x1

    goto :goto_210

    :cond_230
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/a/a/a/c/m;

    iget-object v0, v2, Lorg/a/a/a/c/m;->a:Ljava/lang/Object;

    check-cast v0, Lorg/a/a/a/a/ap;

    iget-object v7, v1, Lorg/a/a/a/a/a;->a:Ljava/util/List;

    iget-object v2, v2, Lorg/a/a/a/c/m;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/a/a/a/a/n;

    iput-object v2, v0, Lorg/a/a/a/a/ap;->g:Lorg/a/a/a/a/n;

    goto/16 :goto_c5

    :cond_24f
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/a/a/a/c/m;

    iget-object v0, v2, Lorg/a/a/a/c/m;->a:Ljava/lang/Object;

    check-cast v0, Lorg/a/a/a/a/w;

    iget-object v7, v1, Lorg/a/a/a/a/a;->a:Ljava/util/List;

    iget-object v2, v2, Lorg/a/a/a/c/m;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/a/a/a/a/v;

    iput-object v2, v0, Lorg/a/a/a/a/w;->g:Lorg/a/a/a/a/v;

    goto/16 :goto_cf

    :cond_26e
    aget-char v0, v9, v2

    invoke-static {v0}, Lorg/a/a/a/a/h;->a(C)I

    move-result v0

    iget-object v7, v1, Lorg/a/a/a/a/a;->a:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/a/a/a/x;

    const/4 v7, 0x1

    iput-boolean v7, v0, Lorg/a/a/a/a/x;->i:Z

    add-int/lit8 v0, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    move v3, v0

    goto/16 :goto_df

    :cond_286
    aget-char v0, v9, v2

    invoke-static {v0}, Lorg/a/a/a/a/h;->a(C)I

    move-result v0

    iget-object v5, v1, Lorg/a/a/a/a/a;->a:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/a/a/a/ba;

    const/4 v5, 0x1

    iput-boolean v5, v0, Lorg/a/a/a/a/ba;->h:Z

    add-int/lit8 v0, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    move v3, v0

    goto/16 :goto_ed

    :cond_29e
    add-int/lit8 v3, v5, 0x1

    aget-char v0, v9, v5

    invoke-static {v0}, Lorg/a/a/a/a/h;->a(C)I

    move-result v0

    iget-object v2, v1, Lorg/a/a/a/a/a;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/a/a/a/ba;

    iget-object v2, v1, Lorg/a/a/a/a/a;->c:[Lorg/a/a/a/a/ba;

    aput-object v0, v2, v4

    iget-object v0, v1, Lorg/a/a/a/a/a;->f:Lorg/a/a/a/a/o;

    sget-object v2, Lorg/a/a/a/a/o;->a:Lorg/a/a/a/a/o;

    if-ne v0, v2, :cond_5d2

    add-int/lit8 v2, v3, 0x1

    aget-char v0, v9, v3

    invoke-static {v0}, Lorg/a/a/a/a/h;->a(C)I

    move-result v0

    const v3, 0xffff

    if-ne v0, v3, :cond_2c6

    const/4 v0, -0x1

    :cond_2c6
    iget-object v3, v1, Lorg/a/a/a/a/a;->h:[I

    aput v0, v3, v4

    sget-object v0, Lorg/a/a/a/a/h;->e:Ljava/util/UUID;

    invoke-static {v0, v6}, Lorg/a/a/a/a/h;->a(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    if-nez v0, :cond_5cf

    add-int/lit8 v0, v2, 0x1

    aget-char v2, v9, v2

    invoke-static {v2}, Lorg/a/a/a/a/h;->a(C)I

    :goto_2d9
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v5, v0

    goto/16 :goto_109

    :cond_2df
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/a/a/a/n;

    instance-of v2, v0, Lorg/a/a/a/a/bb;

    if-eqz v2, :cond_115

    move-object v2, v0

    check-cast v2, Lorg/a/a/a/a/bb;

    iget-object v4, v1, Lorg/a/a/a/a/a;->d:[Lorg/a/a/a/a/bb;

    iget v7, v0, Lorg/a/a/a/a/n;->d:I

    aput-object v2, v4, v7

    iget-object v4, v1, Lorg/a/a/a/a/a;->c:[Lorg/a/a/a/a/ba;

    iget v0, v0, Lorg/a/a/a/a/n;->d:I

    aget-object v0, v4, v0

    iput-object v2, v0, Lorg/a/a/a/a/ba;->g:Lorg/a/a/a/a/bb;

    goto/16 :goto_115

    :cond_2fc
    aget-char v0, v9, v2

    invoke-static {v0}, Lorg/a/a/a/a/h;->a(C)I

    move-result v0

    iget-object v5, v1, Lorg/a/a/a/a/a;->j:Ljava/util/List;

    iget-object v7, v1, Lorg/a/a/a/a/a;->a:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/a/a/a/bk;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_125

    :cond_316
    aget-char v0, v9, v11

    invoke-static {v0}, Lorg/a/a/a/a/h;->a(C)I

    move-result v3

    add-int/lit8 v0, v11, 0x1

    aget-char v0, v9, v0

    invoke-static {v0}, Lorg/a/a/a/a/h;->a(C)I

    move-result v4

    add-int/lit8 v0, v11, 0x2

    aget-char v0, v9, v0

    invoke-static {v0}, Lorg/a/a/a/a/h;->a(C)I

    move-result v2

    add-int/lit8 v0, v11, 0x3

    aget-char v0, v9, v0

    invoke-static {v0}, Lorg/a/a/a/a/h;->a(C)I

    move-result v5

    add-int/lit8 v0, v11, 0x4

    aget-char v0, v9, v0

    invoke-static {v0}, Lorg/a/a/a/a/h;->a(C)I

    move-result v6

    add-int/lit8 v0, v11, 0x5

    aget-char v0, v9, v0

    invoke-static {v0}, Lorg/a/a/a/a/h;->a(C)I

    move-result v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lorg/a/a/a/a/h;->a(Lorg/a/a/a/a/a;IIIIIILjava/util/List;)Lorg/a/a/a/a/bl;

    move-result-object v2

    iget-object v0, v1, Lorg/a/a/a/a/a;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/a/a/a/n;

    invoke-virtual {v0, v2}, Lorg/a/a/a/a/n;->a(Lorg/a/a/a/a/bl;)V

    add-int/lit8 v0, v10, 0x1

    add-int/lit8 v2, v11, 0x6

    move v10, v0

    move v11, v2

    goto/16 :goto_153

    :cond_35c
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/a/a/a/n;

    const/4 v2, 0x0

    move v3, v2

    :goto_364
    invoke-virtual {v0}, Lorg/a/a/a/a/n;->a()I

    move-result v2

    if-ge v3, v2, :cond_15b

    invoke-virtual {v0, v3}, Lorg/a/a/a/a/n;->a(I)Lorg/a/a/a/a/bl;

    move-result-object v2

    instance-of v4, v2, Lorg/a/a/a/a/bc;

    if-nez v4, :cond_376

    :goto_372
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_364

    :cond_376
    check-cast v2, Lorg/a/a/a/a/bc;

    const/4 v4, -0x1

    iget-object v6, v1, Lorg/a/a/a/a/a;->c:[Lorg/a/a/a/a/ba;

    iget-object v7, v2, Lorg/a/a/a/a/bc;->f:Lorg/a/a/a/a/n;

    iget v7, v7, Lorg/a/a/a/a/n;->d:I

    aget-object v6, v6, v7

    iget-boolean v6, v6, Lorg/a/a/a/a/ba;->h:Z

    if-eqz v6, :cond_38d

    iget v6, v2, Lorg/a/a/a/a/bc;->b:I

    if-nez v6, :cond_38d

    iget-object v4, v2, Lorg/a/a/a/a/bc;->f:Lorg/a/a/a/a/n;

    iget v4, v4, Lorg/a/a/a/a/n;->d:I

    :cond_38d
    new-instance v6, Lorg/a/a/a/a/z;

    iget-object v7, v2, Lorg/a/a/a/a/bc;->c:Lorg/a/a/a/a/n;

    invoke-direct {v6, v7, v4}, Lorg/a/a/a/a/z;-><init>(Lorg/a/a/a/a/n;I)V

    iget-object v4, v1, Lorg/a/a/a/a/a;->d:[Lorg/a/a/a/a/bb;

    iget-object v2, v2, Lorg/a/a/a/a/bc;->f:Lorg/a/a/a/a/n;

    iget v2, v2, Lorg/a/a/a/a/n;->d:I

    aget-object v2, v4, v2

    invoke-virtual {v2, v6}, Lorg/a/a/a/a/bb;->a(Lorg/a/a/a/a/bl;)V

    goto :goto_372

    :cond_3a0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/a/a/a/a/n;

    instance-of v0, v2, Lorg/a/a/a/a/w;

    if-eqz v0, :cond_3d0

    move-object v0, v2

    check-cast v0, Lorg/a/a/a/a/w;

    iget-object v0, v0, Lorg/a/a/a/a/w;->g:Lorg/a/a/a/a/v;

    if-nez v0, :cond_3b7

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_3b7
    move-object v0, v2

    check-cast v0, Lorg/a/a/a/a/w;

    iget-object v0, v0, Lorg/a/a/a/a/w;->g:Lorg/a/a/a/a/v;

    iget-object v0, v0, Lorg/a/a/a/a/v;->g:Lorg/a/a/a/a/w;

    if-eqz v0, :cond_3c6

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_3c6
    move-object v0, v2

    check-cast v0, Lorg/a/a/a/a/w;

    iget-object v3, v0, Lorg/a/a/a/a/w;->g:Lorg/a/a/a/a/v;

    move-object v0, v2

    check-cast v0, Lorg/a/a/a/a/w;

    iput-object v0, v3, Lorg/a/a/a/a/v;->g:Lorg/a/a/a/a/w;

    :cond_3d0
    instance-of v0, v2, Lorg/a/a/a/a/au;

    if-eqz v0, :cond_3f0

    check-cast v2, Lorg/a/a/a/a/au;

    const/4 v0, 0x0

    move v3, v0

    :goto_3d8
    invoke-virtual {v2}, Lorg/a/a/a/a/au;->a()I

    move-result v0

    if-ge v3, v0, :cond_167

    invoke-virtual {v2, v3}, Lorg/a/a/a/a/au;->a(I)Lorg/a/a/a/a/bl;

    move-result-object v0

    iget-object v0, v0, Lorg/a/a/a/a/bl;->f:Lorg/a/a/a/a/n;

    instance-of v5, v0, Lorg/a/a/a/a/at;

    if-eqz v5, :cond_3ec

    check-cast v0, Lorg/a/a/a/a/at;

    iput-object v2, v0, Lorg/a/a/a/a/at;->j:Lorg/a/a/a/a/au;

    :cond_3ec
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3d8

    :cond_3f0
    instance-of v0, v2, Lorg/a/a/a/a/bj;

    if-eqz v0, :cond_167

    check-cast v2, Lorg/a/a/a/a/bj;

    const/4 v0, 0x0

    move v3, v0

    :goto_3f8
    invoke-virtual {v2}, Lorg/a/a/a/a/bj;->a()I

    move-result v0

    if-ge v3, v0, :cond_167

    invoke-virtual {v2, v3}, Lorg/a/a/a/a/bj;->a(I)Lorg/a/a/a/a/bl;

    move-result-object v0

    iget-object v0, v0, Lorg/a/a/a/a/bl;->f:Lorg/a/a/a/a/n;

    instance-of v5, v0, Lorg/a/a/a/a/bi;

    if-eqz v5, :cond_40c

    check-cast v0, Lorg/a/a/a/a/bi;

    iput-object v2, v0, Lorg/a/a/a/a/bi;->g:Lorg/a/a/a/a/bj;

    :cond_40c
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3f8

    :cond_410
    aget-char v0, v9, v3

    invoke-static {v0}, Lorg/a/a/a/a/h;->a(C)I

    move-result v0

    iget-object v5, v1, Lorg/a/a/a/a/a;->a:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/a/a/a/x;

    iget-object v5, v1, Lorg/a/a/a/a/a;->b:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v2, -0x1

    iput v5, v0, Lorg/a/a/a/a/x;->h:I

    add-int/lit8 v0, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    move v2, v0

    goto/16 :goto_177

    :cond_42e
    invoke-static {}, Lorg/a/a/a/a/af;->a()[Lorg/a/a/a/a/af;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    aget-char v0, v9, v0

    invoke-static {v0}, Lorg/a/a/a/a/h;->a(C)I

    move-result v0

    aget-object v5, v3, v0

    add-int/lit8 v6, v4, 0x1

    aget-char v0, v9, v4

    invoke-static {v0}, Lorg/a/a/a/a/h;->a(C)I

    move-result v0

    const v3, 0xffff

    if-ne v0, v3, :cond_5cc

    const/4 v0, -0x1

    move v3, v0

    :goto_44b
    add-int/lit8 v0, v6, 0x1

    aget-char v4, v9, v6

    invoke-static {v4}, Lorg/a/a/a/a/h;->a(C)I

    move-result v4

    const v6, 0xffff

    if-ne v4, v6, :cond_459

    const/4 v4, -0x1

    :cond_459
    invoke-virtual {p0, v5, v3, v4}, Lorg/a/a/a/a/h;->a(Lorg/a/a/a/a/af;II)Lorg/a/a/a/a/ad;

    move-result-object v3

    iget-object v4, v1, Lorg/a/a/a/a/a;->i:[Lorg/a/a/a/a/ad;

    aput-object v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_18e

    :cond_465
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v1, Lorg/a/a/a/a/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_470
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_486

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/a/a/a/a/ad;

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/a/a/a/a/ad;

    iput-object v0, v1, Lorg/a/a/a/a/a;->i:[Lorg/a/a/a/a/ad;

    goto/16 :goto_193

    :cond_486
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/a/a/a/n;

    const/4 v2, 0x0

    move v4, v2

    :goto_48e
    invoke-virtual {v0}, Lorg/a/a/a/a/n;->a()I

    move-result v2

    if-ge v4, v2, :cond_470

    invoke-virtual {v0, v4}, Lorg/a/a/a/a/n;->a(I)Lorg/a/a/a/a/bl;

    move-result-object v3

    instance-of v2, v3, Lorg/a/a/a/a/q;

    if-nez v2, :cond_4a0

    :goto_49c
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_48e

    :cond_4a0
    move-object v2, v3

    check-cast v2, Lorg/a/a/a/a/q;

    iget v7, v2, Lorg/a/a/a/a/q;->a:I

    new-instance v8, Lorg/a/a/a/a/ah;

    move-object v2, v3

    check-cast v2, Lorg/a/a/a/a/q;

    iget v2, v2, Lorg/a/a/a/a/q;->b:I

    invoke-direct {v8, v7, v2}, Lorg/a/a/a/a/ah;-><init>(II)V

    new-instance v2, Lorg/a/a/a/a/q;

    iget-object v3, v3, Lorg/a/a/a/a/bl;->f:Lorg/a/a/a/a/n;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x0

    invoke-direct {v2, v3, v7, v9, v10}, Lorg/a/a/a/a/q;-><init>(Lorg/a/a/a/a/n;IIZ)V

    invoke-virtual {v0, v4, v2}, Lorg/a/a/a/a/n;->b(ILorg/a/a/a/a/bl;)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_49c

    :cond_4c2
    iget-object v2, v1, Lorg/a/a/a/a/a;->h:[I

    iget v3, v1, Lorg/a/a/a/a/a;->g:I

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1b7

    :cond_4cf
    new-instance v5, Lorg/a/a/a/a/t;

    invoke-direct {v5}, Lorg/a/a/a/a/t;-><init>()V

    iput v3, v5, Lorg/a/a/a/a/t;->d:I

    invoke-virtual {v1, v5}, Lorg/a/a/a/a/a;->a(Lorg/a/a/a/a/n;)V

    new-instance v6, Lorg/a/a/a/a/v;

    invoke-direct {v6}, Lorg/a/a/a/a/v;-><init>()V

    iput v3, v6, Lorg/a/a/a/a/v;->d:I

    invoke-virtual {v1, v6}, Lorg/a/a/a/a/a;->a(Lorg/a/a/a/a/n;)V

    iput-object v6, v5, Lorg/a/a/a/a/t;->g:Lorg/a/a/a/a/v;

    invoke-virtual {v1, v5}, Lorg/a/a/a/a/a;->a(Lorg/a/a/a/a/x;)I

    iput-object v5, v6, Lorg/a/a/a/a/v;->g:Lorg/a/a/a/a/w;

    iget-object v0, v1, Lorg/a/a/a/a/a;->c:[Lorg/a/a/a/a/ba;

    aget-object v0, v0, v3

    iget-boolean v0, v0, Lorg/a/a/a/a/ba;->h:Z

    if-eqz v0, :cond_58e

    const/4 v2, 0x0

    iget-object v0, v1, Lorg/a/a/a/a/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4f9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_509

    :goto_4ff
    if-nez v2, :cond_538

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Couldn\'t identify final state of the precedence rule prefix section."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_509
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/a/a/a/n;

    iget v7, v0, Lorg/a/a/a/a/n;->d:I

    if-ne v7, v3, :cond_4f9

    instance-of v7, v0, Lorg/a/a/a/a/bi;

    if-eqz v7, :cond_4f9

    invoke-virtual {v0}, Lorg/a/a/a/a/n;->a()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v0, v7}, Lorg/a/a/a/a/n;->a(I)Lorg/a/a/a/a/bl;

    move-result-object v7

    iget-object v7, v7, Lorg/a/a/a/a/bl;->f:Lorg/a/a/a/a/n;

    instance-of v8, v7, Lorg/a/a/a/a/ap;

    if-eqz v8, :cond_4f9

    iget-boolean v8, v7, Lorg/a/a/a/a/n;->e:Z

    if-eqz v8, :cond_4f9

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/a/a/a/a/n;->a(I)Lorg/a/a/a/a/bl;

    move-result-object v7

    iget-object v7, v7, Lorg/a/a/a/a/bl;->f:Lorg/a/a/a/a/n;

    instance-of v7, v7, Lorg/a/a/a/a/bb;

    if-eqz v7, :cond_4f9

    move-object v2, v0

    goto :goto_4ff

    :cond_538
    move-object v0, v2

    check-cast v0, Lorg/a/a/a/a/bi;

    iget-object v0, v0, Lorg/a/a/a/a/bi;->g:Lorg/a/a/a/a/bj;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lorg/a/a/a/a/bj;->a(I)Lorg/a/a/a/a/bl;

    move-result-object v0

    move-object v4, v0

    :goto_543
    iget-object v0, v1, Lorg/a/a/a/a/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_549
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_595

    :goto_54f
    iget-object v0, v1, Lorg/a/a/a/a/a;->c:[Lorg/a/a/a/a/ba;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lorg/a/a/a/a/ba;->a()I

    move-result v0

    if-gtz v0, :cond_5b6

    iget-object v0, v1, Lorg/a/a/a/a/a;->c:[Lorg/a/a/a/a/ba;

    aget-object v0, v0, v3

    new-instance v4, Lorg/a/a/a/a/z;

    invoke-direct {v4, v5}, Lorg/a/a/a/a/z;-><init>(Lorg/a/a/a/a/n;)V

    invoke-virtual {v0, v4}, Lorg/a/a/a/a/ba;->a(Lorg/a/a/a/a/bl;)V

    new-instance v0, Lorg/a/a/a/a/z;

    invoke-direct {v0, v2}, Lorg/a/a/a/a/z;-><init>(Lorg/a/a/a/a/n;)V

    invoke-virtual {v6, v0}, Lorg/a/a/a/a/v;->a(Lorg/a/a/a/a/bl;)V

    new-instance v0, Lorg/a/a/a/a/u;

    invoke-direct {v0}, Lorg/a/a/a/a/u;-><init>()V

    invoke-virtual {v1, v0}, Lorg/a/a/a/a/a;->a(Lorg/a/a/a/a/n;)V

    new-instance v2, Lorg/a/a/a/a/s;

    iget-object v4, v1, Lorg/a/a/a/a/a;->h:[I

    aget v4, v4, v3

    invoke-direct {v2, v6, v4}, Lorg/a/a/a/a/s;-><init>(Lorg/a/a/a/a/n;I)V

    invoke-virtual {v0, v2}, Lorg/a/a/a/a/n;->a(Lorg/a/a/a/a/bl;)V

    new-instance v2, Lorg/a/a/a/a/z;

    invoke-direct {v2, v0}, Lorg/a/a/a/a/z;-><init>(Lorg/a/a/a/a/n;)V

    invoke-virtual {v5, v2}, Lorg/a/a/a/a/t;->a(Lorg/a/a/a/a/bl;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_1be

    :cond_58e
    iget-object v0, v1, Lorg/a/a/a/a/a;->d:[Lorg/a/a/a/a/bb;

    aget-object v2, v0, v3

    const/4 v0, 0x0

    move-object v4, v0

    goto :goto_543

    :cond_595
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/a/a/a/n;

    iget-object v0, v0, Lorg/a/a/a/a/n;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5a1
    :goto_5a1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_549

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/a/a/a/bl;

    if-eq v0, v4, :cond_5a1

    iget-object v9, v0, Lorg/a/a/a/a/bl;->f:Lorg/a/a/a/a/n;

    if-ne v9, v2, :cond_5a1

    iput-object v6, v0, Lorg/a/a/a/a/bl;->f:Lorg/a/a/a/a/n;

    goto :goto_5a1

    :cond_5b6
    iget-object v0, v1, Lorg/a/a/a/a/a;->c:[Lorg/a/a/a/a/ba;

    aget-object v0, v0, v3

    iget-object v4, v1, Lorg/a/a/a/a/a;->c:[Lorg/a/a/a/a/ba;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lorg/a/a/a/a/ba;->a()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Lorg/a/a/a/a/ba;->b(I)Lorg/a/a/a/a/bl;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/a/a/a/a/t;->a(Lorg/a/a/a/a/bl;)V

    goto :goto_54f

    :cond_5cc
    move v3, v0

    goto/16 :goto_44b

    :cond_5cf
    move v0, v2

    goto/16 :goto_2d9

    :cond_5d2
    move v0, v3

    goto/16 :goto_2d9

    :cond_5d5
    move v0, v3

    goto/16 :goto_210

    :cond_5d8
    move v0, v2

    goto/16 :goto_f0
.end method

.method protected a(Lorg/a/a/a/a/af;II)Lorg/a/a/a/a/ad;
    .registers 9

    invoke-static {}, Lorg/a/a/a/a/h;->a()[I

    move-result-object v0

    invoke-virtual {p1}, Lorg/a/a/a/a/af;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_4a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "The specified lexer action type %d is not valid."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_23  #0x1
    new-instance v0, Lorg/a/a/a/a/ag;

    invoke-direct {v0, p2}, Lorg/a/a/a/a/ag;-><init>(I)V

    :goto_28
    return-object v0

    :pswitch_29  #0x2
    new-instance v0, Lorg/a/a/a/a/ah;

    invoke-direct {v0, p2, p3}, Lorg/a/a/a/a/ah;-><init>(II)V

    goto :goto_28

    :pswitch_2f  #0x3
    new-instance v0, Lorg/a/a/a/a/aj;

    invoke-direct {v0, p2}, Lorg/a/a/a/a/aj;-><init>(I)V

    goto :goto_28

    :pswitch_35  #0x4
    sget-object v0, Lorg/a/a/a/a/ak;->a:Lorg/a/a/a/a/ak;

    goto :goto_28

    :pswitch_38  #0x5
    sget-object v0, Lorg/a/a/a/a/al;->a:Lorg/a/a/a/a/al;

    goto :goto_28

    :pswitch_3b  #0x6
    new-instance v0, Lorg/a/a/a/a/am;

    invoke-direct {v0, p2}, Lorg/a/a/a/a/am;-><init>(I)V

    goto :goto_28

    :pswitch_41  #0x7
    sget-object v0, Lorg/a/a/a/a/an;->a:Lorg/a/a/a/a/an;

    goto :goto_28

    :pswitch_44  #0x8
    new-instance v0, Lorg/a/a/a/a/ao;

    invoke-direct {v0, p2}, Lorg/a/a/a/a/ao;-><init>(I)V

    goto :goto_28

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_23  #00000001
        :pswitch_29  #00000002
        :pswitch_2f  #00000003
        :pswitch_35  #00000004
        :pswitch_38  #00000005
        :pswitch_3b  #00000006
        :pswitch_41  #00000007
        :pswitch_44  #00000008
    .end packed-switch
.end method

.method protected a(Lorg/a/a/a/a/a;IIIIIILjava/util/List;)Lorg/a/a/a/a/bl;
    .registers 13

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, -0x1

    iget-object v0, p1, Lorg/a/a/a/a/a;->a:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/a/a/a/n;

    packed-switch p2, :pswitch_data_8a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The specified transition type is not valid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_16  #0x1
    new-instance v1, Lorg/a/a/a/a/z;

    invoke-direct {v1, v0}, Lorg/a/a/a/a/z;-><init>(Lorg/a/a/a/a/n;)V

    move-object v0, v1

    :goto_1c
    return-object v0

    :pswitch_1d  #0x2
    if-eqz p7, :cond_26

    new-instance v1, Lorg/a/a/a/a/az;

    invoke-direct {v1, v0, v3, p6}, Lorg/a/a/a/a/az;-><init>(Lorg/a/a/a/a/n;II)V

    move-object v0, v1

    goto :goto_1c

    :cond_26
    new-instance v1, Lorg/a/a/a/a/az;

    invoke-direct {v1, v0, p5, p6}, Lorg/a/a/a/a/az;-><init>(Lorg/a/a/a/a/n;II)V

    move-object v0, v1

    goto :goto_1c

    :pswitch_2d  #0x3
    new-instance v2, Lorg/a/a/a/a/bc;

    iget-object v1, p1, Lorg/a/a/a/a/a;->a:Ljava/util/List;

    invoke-interface {v1, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/a/a/a/a/ba;

    invoke-direct {v2, v1, p6, p7, v0}, Lorg/a/a/a/a/bc;-><init>(Lorg/a/a/a/a/ba;IILorg/a/a/a/a/n;)V

    move-object v0, v2

    goto :goto_1c

    :pswitch_3c  #0x4
    if-eqz p7, :cond_45

    :goto_3e
    new-instance v1, Lorg/a/a/a/a/aw;

    invoke-direct {v1, v0, p5, p6, v2}, Lorg/a/a/a/a/aw;-><init>(Lorg/a/a/a/a/n;IIZ)V

    move-object v0, v1

    goto :goto_1c

    :cond_45
    move v2, v1

    goto :goto_3e

    :pswitch_47  #0xa
    new-instance v1, Lorg/a/a/a/a/av;

    invoke-direct {v1, v0, p5}, Lorg/a/a/a/a/av;-><init>(Lorg/a/a/a/a/n;I)V

    move-object v0, v1

    goto :goto_1c

    :pswitch_4e  #0x5
    if-eqz p7, :cond_57

    new-instance v1, Lorg/a/a/a/a/s;

    invoke-direct {v1, v0, v3}, Lorg/a/a/a/a/s;-><init>(Lorg/a/a/a/a/n;I)V

    move-object v0, v1

    goto :goto_1c

    :cond_57
    new-instance v1, Lorg/a/a/a/a/s;

    invoke-direct {v1, v0, p5}, Lorg/a/a/a/a/s;-><init>(Lorg/a/a/a/a/n;I)V

    move-object v0, v1

    goto :goto_1c

    :pswitch_5e  #0x6
    if-eqz p7, :cond_67

    :goto_60
    new-instance v1, Lorg/a/a/a/a/q;

    invoke-direct {v1, v0, p5, p6, v2}, Lorg/a/a/a/a/q;-><init>(Lorg/a/a/a/a/n;IIZ)V

    move-object v0, v1

    goto :goto_1c

    :cond_67
    move v2, v1

    goto :goto_60

    :pswitch_69  #0x7
    new-instance v2, Lorg/a/a/a/a/bf;

    invoke-interface {p8, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/a/a/a/c/j;

    invoke-direct {v2, v0, v1}, Lorg/a/a/a/a/bf;-><init>(Lorg/a/a/a/a/n;Lorg/a/a/a/c/j;)V

    move-object v0, v2

    goto :goto_1c

    :pswitch_76  #0x8
    new-instance v2, Lorg/a/a/a/a/aq;

    invoke-interface {p8, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/a/a/a/c/j;

    invoke-direct {v2, v0, v1}, Lorg/a/a/a/a/aq;-><init>(Lorg/a/a/a/a/n;Lorg/a/a/a/c/j;)V

    move-object v0, v2

    goto :goto_1c

    :pswitch_83  #0x9
    new-instance v1, Lorg/a/a/a/a/bn;

    invoke-direct {v1, v0}, Lorg/a/a/a/a/bn;-><init>(Lorg/a/a/a/a/n;)V

    move-object v0, v1

    goto :goto_1c

    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_16  #00000001
        :pswitch_1d  #00000002
        :pswitch_2d  #00000003
        :pswitch_3c  #00000004
        :pswitch_4e  #00000005
        :pswitch_5e  #00000006
        :pswitch_69  #00000007
        :pswitch_76  #00000008
        :pswitch_83  #00000009
        :pswitch_47  #0000000a
    .end packed-switch
.end method

.method protected a(II)Lorg/a/a/a/a/n;
    .registers 9

    packed-switch p1, :pswitch_data_6a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "The specified state type %d is not valid."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1d  #0x0
    const/4 v0, 0x0

    :goto_1e
    return-object v0

    :pswitch_1f  #0x1
    new-instance v0, Lorg/a/a/a/a/u;

    invoke-direct {v0}, Lorg/a/a/a/a/u;-><init>()V

    :goto_24
    iput p2, v0, Lorg/a/a/a/a/n;->d:I

    goto :goto_1e

    :pswitch_27  #0x2
    new-instance v0, Lorg/a/a/a/a/ba;

    invoke-direct {v0}, Lorg/a/a/a/a/ba;-><init>()V

    goto :goto_24

    :pswitch_2d  #0x3
    new-instance v0, Lorg/a/a/a/a/t;

    invoke-direct {v0}, Lorg/a/a/a/a/t;-><init>()V

    goto :goto_24

    :pswitch_33  #0x4
    new-instance v0, Lorg/a/a/a/a/at;

    invoke-direct {v0}, Lorg/a/a/a/a/at;-><init>()V

    goto :goto_24

    :pswitch_39  #0x5
    new-instance v0, Lorg/a/a/a/a/bh;

    invoke-direct {v0}, Lorg/a/a/a/a/bh;-><init>()V

    goto :goto_24

    :pswitch_3f  #0x6
    new-instance v0, Lorg/a/a/a/a/bk;

    invoke-direct {v0}, Lorg/a/a/a/a/bk;-><init>()V

    goto :goto_24

    :pswitch_45  #0x7
    new-instance v0, Lorg/a/a/a/a/bb;

    invoke-direct {v0}, Lorg/a/a/a/a/bb;-><init>()V

    goto :goto_24

    :pswitch_4b  #0x8
    new-instance v0, Lorg/a/a/a/a/v;

    invoke-direct {v0}, Lorg/a/a/a/a/v;-><init>()V

    goto :goto_24

    :pswitch_51  #0x9
    new-instance v0, Lorg/a/a/a/a/bj;

    invoke-direct {v0}, Lorg/a/a/a/a/bj;-><init>()V

    goto :goto_24

    :pswitch_57  #0xa
    new-instance v0, Lorg/a/a/a/a/bi;

    invoke-direct {v0}, Lorg/a/a/a/a/bi;-><init>()V

    goto :goto_24

    :pswitch_5d  #0xb
    new-instance v0, Lorg/a/a/a/a/au;

    invoke-direct {v0}, Lorg/a/a/a/a/au;-><init>()V

    goto :goto_24

    :pswitch_63  #0xc
    new-instance v0, Lorg/a/a/a/a/ap;

    invoke-direct {v0}, Lorg/a/a/a/a/ap;-><init>()V

    goto :goto_24

    nop

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_1d  #00000000
        :pswitch_1f  #00000001
        :pswitch_27  #00000002
        :pswitch_2d  #00000003
        :pswitch_33  #00000004
        :pswitch_39  #00000005
        :pswitch_3f  #00000006
        :pswitch_45  #00000007
        :pswitch_4b  #00000008
        :pswitch_51  #00000009
        :pswitch_57  #0000000a
        :pswitch_5d  #0000000b
        :pswitch_63  #0000000c
    .end packed-switch
.end method

.method protected a(Lorg/a/a/a/a/a;)V
    .registers 6

    iget-object v0, p1, Lorg/a/a/a/a/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/a/a/a/n;

    instance-of v2, v0, Lorg/a/a/a/a/bi;

    if-eqz v2, :cond_6

    iget-object v2, p1, Lorg/a/a/a/a/a;->c:[Lorg/a/a/a/a/ba;

    iget v3, v0, Lorg/a/a/a/a/n;->d:I

    aget-object v2, v2, v3

    iget-boolean v2, v2, Lorg/a/a/a/a/ba;->h:Z

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lorg/a/a/a/a/n;->a()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Lorg/a/a/a/a/n;->a(I)Lorg/a/a/a/a/bl;

    move-result-object v2

    iget-object v2, v2, Lorg/a/a/a/a/bl;->f:Lorg/a/a/a/a/n;

    instance-of v3, v2, Lorg/a/a/a/a/ap;

    if-eqz v3, :cond_6

    iget-boolean v3, v2, Lorg/a/a/a/a/n;->e:Z

    if-eqz v3, :cond_6

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/a/a/a/a/n;->a(I)Lorg/a/a/a/a/bl;

    move-result-object v2

    iget-object v2, v2, Lorg/a/a/a/a/bl;->f:Lorg/a/a/a/a/n;

    instance-of v2, v2, Lorg/a/a/a/a/bb;

    if-eqz v2, :cond_6

    check-cast v0, Lorg/a/a/a/a/bi;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lorg/a/a/a/a/bi;->j:Z

    goto :goto_6
.end method

.method protected a(Z)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/a/a/a/a/h;->a(ZLjava/lang/String;)V

    return-void
.end method

.method protected a(ZLjava/lang/String;)V
    .registers 4

    if-nez p1, :cond_8

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    return-void
.end method

.method protected b(Lorg/a/a/a/a/a;)V
    .registers 9

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v0, p1, Lorg/a/a/a/a/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_8
    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    :cond_f
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/a/a/a/n;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lorg/a/a/a/a/n;->b()Z

    move-result v1

    if-nez v1, :cond_d8

    invoke-virtual {v0}, Lorg/a/a/a/a/n;->a()I

    move-result v1

    if-le v1, v3, :cond_d8

    move v1, v2

    :goto_24
    invoke-virtual {p0, v1}, Lorg/a/a/a/a/h;->a(Z)V

    instance-of v1, v0, Lorg/a/a/a/a/at;

    if-eqz v1, :cond_36

    move-object v1, v0

    check-cast v1, Lorg/a/a/a/a/at;

    iget-object v1, v1, Lorg/a/a/a/a/at;->j:Lorg/a/a/a/a/au;

    if-eqz v1, :cond_db

    move v1, v3

    :goto_33
    invoke-virtual {p0, v1}, Lorg/a/a/a/a/h;->a(Z)V

    :cond_36
    instance-of v1, v0, Lorg/a/a/a/a/bi;

    if-eqz v1, :cond_6d

    move-object v1, v0

    check-cast v1, Lorg/a/a/a/a/bi;

    iget-object v4, v1, Lorg/a/a/a/a/bi;->g:Lorg/a/a/a/a/bj;

    if-eqz v4, :cond_de

    move v4, v3

    :goto_42
    invoke-virtual {p0, v4}, Lorg/a/a/a/a/h;->a(Z)V

    invoke-virtual {v1}, Lorg/a/a/a/a/bi;->a()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_e1

    move v4, v3

    :goto_4d
    invoke-virtual {p0, v4}, Lorg/a/a/a/a/h;->a(Z)V

    invoke-virtual {v1, v2}, Lorg/a/a/a/a/bi;->a(I)Lorg/a/a/a/a/bl;

    move-result-object v4

    iget-object v4, v4, Lorg/a/a/a/a/bl;->f:Lorg/a/a/a/a/n;

    instance-of v4, v4, Lorg/a/a/a/a/bh;

    if-eqz v4, :cond_e6

    invoke-virtual {v1, v3}, Lorg/a/a/a/a/bi;->a(I)Lorg/a/a/a/a/bl;

    move-result-object v4

    iget-object v4, v4, Lorg/a/a/a/a/bl;->f:Lorg/a/a/a/a/n;

    instance-of v4, v4, Lorg/a/a/a/a/ap;

    invoke-virtual {p0, v4}, Lorg/a/a/a/a/h;->a(Z)V

    iget-boolean v1, v1, Lorg/a/a/a/a/bi;->i:Z

    if-eqz v1, :cond_e4

    move v1, v2

    :goto_6a
    invoke-virtual {p0, v1}, Lorg/a/a/a/a/h;->a(Z)V

    :cond_6d
    :goto_6d
    instance-of v1, v0, Lorg/a/a/a/a/bj;

    if-eqz v1, :cond_86

    invoke-virtual {v0}, Lorg/a/a/a/a/n;->a()I

    move-result v1

    if-ne v1, v3, :cond_108

    move v1, v3

    :goto_78
    invoke-virtual {p0, v1}, Lorg/a/a/a/a/h;->a(Z)V

    invoke-virtual {v0, v2}, Lorg/a/a/a/a/n;->a(I)Lorg/a/a/a/a/bl;

    move-result-object v1

    iget-object v1, v1, Lorg/a/a/a/a/bl;->f:Lorg/a/a/a/a/n;

    instance-of v1, v1, Lorg/a/a/a/a/bi;

    invoke-virtual {p0, v1}, Lorg/a/a/a/a/h;->a(Z)V

    :cond_86
    instance-of v1, v0, Lorg/a/a/a/a/ap;

    if-eqz v1, :cond_95

    move-object v1, v0

    check-cast v1, Lorg/a/a/a/a/ap;

    iget-object v1, v1, Lorg/a/a/a/a/ap;->g:Lorg/a/a/a/a/n;

    if-eqz v1, :cond_10b

    move v1, v3

    :goto_92
    invoke-virtual {p0, v1}, Lorg/a/a/a/a/h;->a(Z)V

    :cond_95
    instance-of v1, v0, Lorg/a/a/a/a/ba;

    if-eqz v1, :cond_a4

    move-object v1, v0

    check-cast v1, Lorg/a/a/a/a/ba;

    iget-object v1, v1, Lorg/a/a/a/a/ba;->g:Lorg/a/a/a/a/bb;

    if-eqz v1, :cond_10d

    move v1, v3

    :goto_a1
    invoke-virtual {p0, v1}, Lorg/a/a/a/a/h;->a(Z)V

    :cond_a4
    instance-of v1, v0, Lorg/a/a/a/a/w;

    if-eqz v1, :cond_b3

    move-object v1, v0

    check-cast v1, Lorg/a/a/a/a/w;

    iget-object v1, v1, Lorg/a/a/a/a/w;->g:Lorg/a/a/a/a/v;

    if-eqz v1, :cond_10f

    move v1, v3

    :goto_b0
    invoke-virtual {p0, v1}, Lorg/a/a/a/a/h;->a(Z)V

    :cond_b3
    instance-of v1, v0, Lorg/a/a/a/a/v;

    if-eqz v1, :cond_c2

    move-object v1, v0

    check-cast v1, Lorg/a/a/a/a/v;

    iget-object v1, v1, Lorg/a/a/a/a/v;->g:Lorg/a/a/a/a/w;

    if-eqz v1, :cond_111

    move v1, v3

    :goto_bf
    invoke-virtual {p0, v1}, Lorg/a/a/a/a/h;->a(Z)V

    :cond_c2
    instance-of v1, v0, Lorg/a/a/a/a/x;

    if-eqz v1, :cond_115

    check-cast v0, Lorg/a/a/a/a/x;

    invoke-virtual {v0}, Lorg/a/a/a/a/x;->a()I

    move-result v1

    if-le v1, v3, :cond_113

    iget v0, v0, Lorg/a/a/a/a/x;->h:I

    if-gez v0, :cond_113

    move v0, v2

    :goto_d3
    invoke-virtual {p0, v0}, Lorg/a/a/a/a/h;->a(Z)V

    goto/16 :goto_8

    :cond_d8
    move v1, v3

    goto/16 :goto_24

    :cond_db
    move v1, v2

    goto/16 :goto_33

    :cond_de
    move v4, v2

    goto/16 :goto_42

    :cond_e1
    move v4, v2

    goto/16 :goto_4d

    :cond_e4
    move v1, v3

    goto :goto_6a

    :cond_e6
    invoke-virtual {v1, v2}, Lorg/a/a/a/a/bi;->a(I)Lorg/a/a/a/a/bl;

    move-result-object v4

    iget-object v4, v4, Lorg/a/a/a/a/bl;->f:Lorg/a/a/a/a/n;

    instance-of v4, v4, Lorg/a/a/a/a/ap;

    if-eqz v4, :cond_102

    invoke-virtual {v1, v3}, Lorg/a/a/a/a/bi;->a(I)Lorg/a/a/a/a/bl;

    move-result-object v4

    iget-object v4, v4, Lorg/a/a/a/a/bl;->f:Lorg/a/a/a/a/n;

    instance-of v4, v4, Lorg/a/a/a/a/bh;

    invoke-virtual {p0, v4}, Lorg/a/a/a/a/h;->a(Z)V

    iget-boolean v1, v1, Lorg/a/a/a/a/bi;->i:Z

    invoke-virtual {p0, v1}, Lorg/a/a/a/a/h;->a(Z)V

    goto/16 :goto_6d

    :cond_102
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_108
    move v1, v2

    goto/16 :goto_78

    :cond_10b
    move v1, v2

    goto :goto_92

    :cond_10d
    move v1, v2

    goto :goto_a1

    :cond_10f
    move v1, v2

    goto :goto_b0

    :cond_111
    move v1, v2

    goto :goto_bf

    :cond_113
    move v0, v3

    goto :goto_d3

    :cond_115
    invoke-virtual {v0}, Lorg/a/a/a/a/n;->a()I

    move-result v1

    if-le v1, v3, :cond_125

    instance-of v0, v0, Lorg/a/a/a/a/bb;

    if-nez v0, :cond_125

    move v0, v2

    :goto_120
    invoke-virtual {p0, v0}, Lorg/a/a/a/a/h;->a(Z)V

    goto/16 :goto_8

    :cond_125
    move v0, v3

    goto :goto_120
.end method
