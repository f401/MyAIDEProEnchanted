.class public Labcd/RM;
.super Ljava/lang/Object;


# instance fields
.field private j6:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>(Ljava/util/Hashtable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Labcd/RM;->j6:Ljava/util/Hashtable;

    invoke-direct {p0, p1}, Labcd/RM;->j6(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    iput-object v0, p0, Labcd/RM;->j6:Ljava/util/Hashtable;

    return-void
.end method

.method private j6(Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .registers 6

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public j6()Labcd/rL;
    .registers 5

    new-instance v1, Labcd/rL;

    invoke-direct {v1}, Labcd/rL;-><init>()V

    iget-object v0, p0, Labcd/RM;->j6:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Ljava/util/Vector;

    if-eqz v3, :cond_2

    check-cast v0, Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Labcd/QM;->j6(Ljava/lang/Object;)Labcd/QM;

    move-result-object v3

    invoke-virtual {v1, v3}, Labcd/rL;->j6(Labcd/qL;)V

    goto :goto_1

    :cond_2
    invoke-static {v0}, Labcd/QM;->j6(Ljava/lang/Object;)Labcd/QM;

    move-result-object v0

    invoke-virtual {v1, v0}, Labcd/rL;->j6(Labcd/qL;)V

    goto :goto_0
.end method
