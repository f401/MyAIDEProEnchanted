.class public La/e/aj;
.super Ljava/lang/Object;

# interfaces
.implements La/e/o;


# instance fields
.field private final a:La/b/b;

.field private final b:Ljava/util/Map;

.field private final c:La/e/o;


# direct methods
.method public constructor <init>(La/b/b;Ljava/util/Map;La/e/o;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/e/aj;->a:La/b/b;

    iput-object p2, p0, La/e/aj;->b:Ljava/util/Map;

    iput-object p3, p0, La/e/aj;->c:La/e/o;

    return-void
.end method

.method private c(La/e/g;)La/e/g;
    .registers 7

    invoke-interface {p1}, La/e/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_b
    if-lez v2, :cond_20

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-nez v3, :cond_83

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2f

    if-ne v0, v4, :cond_55

    :cond_20
    move-object v0, v1

    :goto_21
    invoke-static {v0}, La/b/f/i;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, La/e/aj;->b:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_87

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_54

    new-instance v3, La/e/ah;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, p1, v0}, La/e/ah;-><init>(La/e/g;Ljava/lang/String;)V

    move-object p1, v3

    :cond_54
    :goto_54
    return-object p1

    :cond_55
    iget-object v0, p0, La/e/aj;->a:La/b/b;

    invoke-virtual {v0, v3}, La/b/b;->a(Ljava/lang/String;)La/b/c;

    move-result-object v0

    if-eqz v0, :cond_83

    invoke-interface {v0}, La/b/c;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    new-instance v0, La/e/ah;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, La/e/ah;-><init>(La/e/g;Ljava/lang/String;)V

    move-object p1, v0

    goto :goto_54

    :cond_83
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_b

    :cond_87
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_54

    move-object v0, v2

    goto :goto_21
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, La/e/aj;->c:La/e/o;

    invoke-interface {v0}, La/e/o;->a()V

    return-void
.end method

.method public a(La/e/g;)Z
    .registers 4

    iget-object v0, p0, La/e/aj;->c:La/e/o;

    invoke-direct {p0, p1}, La/e/aj;->c(La/e/g;)La/e/g;

    move-result-object v1

    invoke-interface {v0, v1}, La/e/o;->a(La/e/g;)Z

    move-result v0

    return v0
.end method

.method public a(La/e/g;La/e/g;)Z
    .registers 4

    iget-object v0, p0, La/e/aj;->c:La/e/o;

    invoke-interface {v0, p1, p2}, La/e/o;->a(La/e/g;La/e/g;)Z

    move-result v0

    return v0
.end method

.method public b(La/e/g;)Ljava/io/OutputStream;
    .registers 4

    iget-object v0, p0, La/e/aj;->c:La/e/o;

    invoke-direct {p0, p1}, La/e/aj;->c(La/e/g;)La/e/g;

    move-result-object v1

    invoke-interface {v0, v1}, La/e/o;->b(La/e/g;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method
