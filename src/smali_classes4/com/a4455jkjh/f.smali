.class public Lcom/a4455jkjh/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/List;)V
    .registers 5

    const-class v0, Lcom/aide/perm;

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_8
    if-lt v0, v2, :cond_e

    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void

    :cond_e
    aget-object v3, v1, v0

    :try_start_10
    invoke-static {p0, v3}, Lcom/a4455jkjh/f;->a(Ljava/util/List;Ljava/lang/reflect/Field;)V
    :try_end_13
    .catch Ljava/lang/IllegalAccessException; {:try_start_10 .. :try_end_13} :catch_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_13} :catch_18

    :goto_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :catch_16
    move-exception v3

    goto :goto_13

    :catch_18
    move-exception v3

    goto :goto_13
.end method

.method private static a(Ljava/util/List;Ljava/lang/reflect/Field;)V
    .registers 4

    new-instance v1, Lcom/a4455jkjh/f;

    invoke-direct {v1}, Lcom/a4455jkjh/f;-><init>()V

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/a4455jkjh/f;->b:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/a4455jkjh/f;->a:Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a(Lcom/a4455jkjh/f;)I
    .registers 4

    iget-object v0, p0, Lcom/a4455jkjh/f;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/a4455jkjh/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/a4455jkjh/f;

    invoke-virtual {p0, p1}, Lcom/a4455jkjh/f;->a(Lcom/a4455jkjh/f;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/a4455jkjh/f;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "\n("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/a4455jkjh/f;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
