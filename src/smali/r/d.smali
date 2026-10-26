.class public final Lr/d;
.super Lc/m;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/Hashtable;

.field public b:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Lc/t;)V
    .locals 4

    invoke-direct {p0}, Lc/m;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lr/d;->a:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lr/d;->b:Ljava/util/Vector;

    invoke-virtual {p1}, Lc/t;->o()Ljava/util/Enumeration;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lr/c;->a:Lc/n;

    .line 1
    instance-of v1, v0, Lr/c;

    if-eqz v1, :cond_0

    check-cast v0, Lr/c;

    .line 2
    :goto_1
    iget-object v1, p0, Lr/d;->a:Ljava/util/Hashtable;

    .line 3
    iget-object v3, v0, Lr/c;->b:Lc/n;

    .line 4
    invoke-virtual {v1, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lr/d;->b:Ljava/util/Vector;

    .line 5
    iget-object v0, v0, Lr/c;->b:Lc/n;

    .line 6
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 1
    :cond_0
    if-eqz v0, :cond_1

    new-instance v1, Lr/c;

    invoke-static {v0}, Lc/t;->b(Ljava/lang/Object;)Lc/t;

    move-result-object v0

    invoke-direct {v1, v0}, Lr/c;-><init>(Lc/t;)V

    move-object v0, v1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 6
    :cond_2
    return-void
.end method

.method public constructor <init>([Lr/c;)V
    .locals 4

    invoke-direct {p0}, Lc/m;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lr/d;->a:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lr/d;->b:Ljava/util/Vector;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_0

    aget-object v1, p1, v0

    iget-object v2, p0, Lr/d;->b:Ljava/util/Vector;

    .line 7
    iget-object v3, v1, Lr/c;->b:Lc/n;

    .line 8
    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v2, p0, Lr/d;->a:Ljava/util/Hashtable;

    .line 9
    iget-object v3, v1, Lr/c;->b:Lc/n;

    .line 10
    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final l()Lc/s;
    .locals 4

    new-instance v1, Lc/f;

    invoke-direct {v1}, Lc/f;-><init>()V

    iget-object v0, p0, Lr/d;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/n;

    iget-object v3, p0, Lr/d;->a:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr/c;

    invoke-virtual {v1, v0}, Lc/f;->b(Lc/e;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lc/bc;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lc/bc;-><init>(Lc/f;I)V

    return-object v0
.end method
