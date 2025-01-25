.class public Lorg/a/a/a/b/a;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/util/Map;

.field public volatile b:Lorg/a/a/a/b/d;

.field public final c:I

.field public final d:Lorg/a/a/a/a/x;

.field private final e:Z


# direct methods
.method public constructor <init>(Lorg/a/a/a/a/x;I)V
    .registers 7

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/a/a/a/b/a;->a:Ljava/util/Map;

    iput-object p1, p0, Lorg/a/a/a/b/a;->d:Lorg/a/a/a/a/x;

    iput p2, p0, Lorg/a/a/a/b/a;->c:I

    instance-of v0, p1, Lorg/a/a/a/a/bi;

    if-eqz v0, :cond_31

    check-cast p1, Lorg/a/a/a/a/bi;

    iget-boolean v0, p1, Lorg/a/a/a/a/bi;->j:Z

    if-eqz v0, :cond_31

    const/4 v0, 0x1

    new-instance v2, Lorg/a/a/a/b/d;

    new-instance v3, Lorg/a/a/a/a/c;

    invoke-direct {v3}, Lorg/a/a/a/a/c;-><init>()V

    invoke-direct {v2, v3}, Lorg/a/a/a/b/d;-><init>(Lorg/a/a/a/a/c;)V

    new-array v3, v1, [Lorg/a/a/a/b/d;

    iput-object v3, v2, Lorg/a/a/a/b/d;->c:[Lorg/a/a/a/b/d;

    iput-boolean v1, v2, Lorg/a/a/a/b/d;->d:Z

    iput-boolean v1, v2, Lorg/a/a/a/b/d;->g:Z

    iput-object v2, p0, Lorg/a/a/a/b/a;->b:Lorg/a/a/a/b/d;

    :goto_2e
    iput-boolean v0, p0, Lorg/a/a/a/b/a;->e:Z

    return-void

    :cond_31
    move v0, v1

    goto :goto_2e
.end method


# virtual methods
.method public a(Lorg/a/a/a/ad;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/a/a/a/b/a;->b:Lorg/a/a/a/b/d;

    if-nez v0, :cond_7

    const-string v0, ""

    :goto_6
    return-object v0

    :cond_7
    new-instance v0, Lorg/a/a/a/b/c;

    invoke-direct {v0, p0, p1}, Lorg/a/a/a/b/c;-><init>(Lorg/a/a/a/b/a;Lorg/a/a/a/ad;)V

    invoke-virtual {v0}, Lorg/a/a/a/b/c;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public a()Ljava/util/List;
    .registers 3

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/a/a/a/b/a;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Lorg/a/a/a/b/b;

    invoke-direct {v1, p0}, Lorg/a/a/a/b/b;-><init>(Lorg/a/a/a/b/a;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    sget-object v0, Lorg/a/a/a/ae;->a:Lorg/a/a/a/ae;

    invoke-virtual {p0, v0}, Lorg/a/a/a/b/a;->a(Lorg/a/a/a/ad;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
