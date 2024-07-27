.class public La/j/c;
.super Ljava/lang/Object;

# interfaces
.implements La/j/u;


# static fields
.field private static final a:[C


# instance fields
.field private b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x9

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, La/j/c;->a:[C

    return-void

    :array_0
    .array-data 2
        0x56s
        0x5as
        0x42s
        0x43s
        0x53s
        0x49s
        0x4as
        0x46s
        0x44s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, La/j/c;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/j/c;->b:Ljava/util/List;

    return-void
.end method

.method private a(Ljava/lang/String;I)I
    .registers 8

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    return v0

    :cond_1
    const/16 v0, 0x3e

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-gez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing closing angular bracket"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, p0, La/j/c;->b:Ljava/util/List;

    if-nez v1, :cond_3

    invoke-static {p1}, La/j/l;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "References to wildcards are not supported in this argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_4

    iget-object v2, p0, La/j/c;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v0, v2, :cond_0

    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid reference to wildcard ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", must lie between 1 and "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, La/j/c;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reference to wildcard must be a number ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(I)La/j/y;
    .registers 3

    iget-object v0, p0, La/j/c;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/j/y;

    return-object v0
.end method

.method private a(La/j/t;)La/j/y;
    .registers 16

    const/16 v10, 0x3b

    const/4 v2, 0x0

    const/4 v13, 0x0

    const/4 v3, 0x1

    new-instance v0, La/j/y;

    sget-object v1, La/j/c;->a:[C

    move v4, v3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, La/j/y;-><init>([C[CIILa/j/t;)V

    new-instance v4, La/j/y;

    new-array v5, v3, [C

    aput-char v10, v5, v13

    move-object v6, v2

    move v7, v3

    move v8, v3

    move-object v9, p1

    invoke-direct/range {v4 .. v9}, La/j/y;-><init>([C[CIILa/j/t;)V

    new-instance v5, La/j/y;

    new-array v7, v3, [C

    aput-char v10, v7, v13

    const v9, 0x7fffffff

    move-object v6, v2

    move v8, v13

    move-object v10, v4

    invoke-direct/range {v5 .. v10}, La/j/y;-><init>([C[CIILa/j/t;)V

    new-instance v12, La/j/q;

    new-instance v6, La/j/y;

    new-array v7, v3, [C

    const/16 v1, 0x4c

    aput-char v1, v7, v13

    move-object v8, v2

    move v9, v3

    move v10, v3

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, La/j/y;-><init>([C[CIILa/j/t;)V

    invoke-direct {v12, v0, v6}, La/j/q;-><init>(La/j/t;La/j/t;)V

    new-instance v0, La/j/y;

    new-array v1, v3, [C

    const/16 v3, 0x5b

    aput-char v3, v1, v13

    const/16 v4, 0xff

    move v3, v13

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, La/j/y;-><init>([C[CIILa/j/t;)V

    return-object v0
.end method

.method private a(La/j/y;)La/j/y;
    .registers 3

    iget-object v0, p0, La/j/c;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/j/c;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;)La/j/t;
    .registers 13

    const v4, 0x7fffffff

    const/4 v6, 0x2

    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v3, 0x0

    new-instance v2, La/j/f;

    invoke-direct {v2}, La/j/f;-><init>()V

    move v10, v3

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v10, v0, :cond_a

    const-string v0, "L///;"

    const/4 v5, 0x5

    invoke-virtual {p1, v10, v0, v3, v5}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v5, La/j/s;

    invoke-direct {v5}, La/j/s;-><init>()V

    new-instance v0, La/j/y;

    new-array v2, v7, [C

    const/16 v6, 0x29

    aput-char v6, v2, v3

    invoke-direct/range {v0 .. v5}, La/j/y;-><init>([C[CIILa/j/t;)V

    invoke-direct {p0, v0}, La/j/c;->a(La/j/y;)La/j/y;

    move-result-object v1

    add-int/lit8 v0, v10, 0x5

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, La/j/c;->a(Ljava/lang/String;)La/j/t;

    move-result-object v0

    invoke-virtual {v5, v0}, La/j/s;->a(La/j/t;)V

    :cond_0
    :goto_1
    if-eqz v10, :cond_9

    new-instance v0, La/j/i;

    invoke-virtual {p1, v3, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, La/j/i;-><init>(Ljava/lang/String;La/j/t;)V

    :goto_2
    return-object v0

    :cond_1
    const-string v0, "L***;"

    const/4 v5, 0x5

    invoke-virtual {p1, v10, v0, v3, v5}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, La/j/s;

    invoke-direct {v0}, La/j/s;-><init>()V

    invoke-direct {p0, v0}, La/j/c;->a(La/j/t;)La/j/y;

    move-result-object v1

    invoke-direct {p0, v1}, La/j/c;->a(La/j/y;)La/j/y;

    move-result-object v1

    add-int/lit8 v2, v10, 0x5

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, La/j/c;->a(Ljava/lang/String;)La/j/t;

    move-result-object v2

    invoke-virtual {v0, v2}, La/j/s;->a(La/j/t;)V

    goto :goto_1

    :cond_2
    const-string v0, "**"

    invoke-virtual {p1, v10, v0, v3, v6}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_4

    add-int/lit8 v0, v10, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_3

    move-object v5, v1

    :goto_3
    new-instance v0, La/j/y;

    new-array v2, v7, [C

    const/16 v6, 0x3b

    aput-char v6, v2, v3

    invoke-direct/range {v0 .. v5}, La/j/y;-><init>([C[CIILa/j/t;)V

    invoke-direct {p0, v0}, La/j/c;->a(La/j/y;)La/j/y;

    move-result-object v1

    if-eqz v5, :cond_0

    add-int/lit8 v0, v10, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, La/j/c;->a(Ljava/lang/String;)La/j/t;

    move-result-object v0

    invoke-virtual {v5, v0}, La/j/s;->a(La/j/t;)V

    goto :goto_1

    :cond_3
    new-instance v5, La/j/s;

    invoke-direct {v5}, La/j/s;-><init>()V

    goto :goto_3

    :cond_4
    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x2a

    if-ne v0, v5, :cond_5

    new-instance v5, La/j/s;

    invoke-direct {v5}, La/j/s;-><init>()V

    new-instance v0, La/j/y;

    new-array v2, v6, [C

    fill-array-data v2, :array_0

    invoke-direct/range {v0 .. v5}, La/j/y;-><init>([C[CIILa/j/t;)V

    invoke-direct {p0, v0}, La/j/c;->a(La/j/y;)La/j/y;

    move-result-object v1

    add-int/lit8 v0, v10, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, La/j/c;->a(Ljava/lang/String;)La/j/t;

    move-result-object v0

    invoke-virtual {v5, v0}, La/j/s;->a(La/j/t;)V

    goto/16 :goto_1

    :cond_5
    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x3f

    if-ne v0, v5, :cond_6

    new-instance v9, La/j/s;

    invoke-direct {v9}, La/j/s;-><init>()V

    new-instance v4, La/j/y;

    new-array v6, v6, [C

    fill-array-data v6, :array_1

    move-object v5, v1

    move v8, v7

    invoke-direct/range {v4 .. v9}, La/j/y;-><init>([C[CIILa/j/t;)V

    invoke-direct {p0, v4}, La/j/c;->a(La/j/y;)La/j/y;

    move-result-object v1

    add-int/lit8 v0, v10, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, La/j/c;->a(Ljava/lang/String;)La/j/t;

    move-result-object v0

    invoke-virtual {v9, v0}, La/j/s;->a(La/j/t;)V

    goto/16 :goto_1

    :cond_6
    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x25

    if-ne v0, v5, :cond_7

    new-instance v9, La/j/s;

    invoke-direct {v9}, La/j/s;-><init>()V

    new-instance v4, La/j/y;

    sget-object v5, La/j/c;->a:[C

    move-object v6, v1

    move v8, v7

    invoke-direct/range {v4 .. v9}, La/j/y;-><init>([C[CIILa/j/t;)V

    invoke-direct {p0, v4}, La/j/c;->a(La/j/y;)La/j/y;

    move-result-object v1

    add-int/lit8 v0, v10, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, La/j/c;->a(Ljava/lang/String;)La/j/t;

    move-result-object v0

    invoke-virtual {v9, v0}, La/j/s;->a(La/j/t;)V

    goto/16 :goto_1

    :cond_7
    invoke-direct {p0, p1, v10}, La/j/c;->a(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_8

    const/16 v1, 0x3e

    add-int/lit8 v2, v10, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    new-instance v1, La/j/m;

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, La/j/c;->a(I)La/j/y;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, La/j/c;->a(Ljava/lang/String;)La/j/t;

    move-result-object v2

    invoke-direct {v1, v0, v2}, La/j/m;-><init>(La/j/y;La/j/t;)V

    goto/16 :goto_1

    :cond_8
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto/16 :goto_0

    :cond_9
    move-object v0, v1

    goto/16 :goto_2

    :cond_a
    move-object v1, v2

    goto/16 :goto_1

    :array_0
    .array-data 2
        0x3bs
        0x2fs
    .end array-data

    :array_1
    .array-data 2
        0x3bs
        0x2fs
    .end array-data
.end method
