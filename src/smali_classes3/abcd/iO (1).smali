.class public Labcd/iO;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/WN;


# instance fields
.field private final j6:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Labcd/iO;->j6:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public getAttributes(Ljava/util/Map;)Labcd/RM;
    .registers 3

    new-instance v0, Labcd/RM;

    invoke-virtual {p0, p1}, Labcd/iO;->j6(Ljava/util/Map;)Ljava/util/Hashtable;

    move-result-object p1

    invoke-direct {v0, p1}, Labcd/RM;-><init>(Ljava/util/Hashtable;)V

    return-object v0
.end method

.method protected j6(Ljava/util/Map;)Ljava/util/Hashtable;
    .registers 8

    iget-object v0, p0, Labcd/iO;->j6:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    sget-object v1, Labcd/SM;->j6:Labcd/zL;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    const-string v1, "contentType"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/oM;

    if-eqz v1, :cond_2d

    new-instance v2, Labcd/QM;

    sget-object v3, Labcd/SM;->j6:Labcd/zL;

    new-instance v4, Labcd/vM;

    invoke-direct {v4, v1}, Labcd/vM;-><init>(Labcd/qL;)V

    invoke-direct {v2, v3, v4}, Labcd/QM;-><init>(Labcd/zL;Labcd/HL;)V

    invoke-virtual {v2}, Labcd/QM;->v5()Labcd/zL;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2d
    sget-object v1, Labcd/SM;->FH:Labcd/zL;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_52

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    new-instance v2, Labcd/QM;

    sget-object v3, Labcd/SM;->FH:Labcd/zL;

    new-instance v4, Labcd/vM;

    new-instance v5, Labcd/ZM;

    invoke-direct {v5, v1}, Labcd/ZM;-><init>(Ljava/util/Date;)V

    invoke-direct {v4, v5}, Labcd/vM;-><init>(Labcd/qL;)V

    invoke-direct {v2, v3, v4}, Labcd/QM;-><init>(Labcd/zL;Labcd/HL;)V

    invoke-virtual {v2}, Labcd/QM;->v5()Labcd/zL;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_52
    sget-object v1, Labcd/SM;->DW:Labcd/zL;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7a

    const-string v1, "digest"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    new-instance v1, Labcd/QM;

    sget-object v2, Labcd/SM;->DW:Labcd/zL;

    new-instance v3, Labcd/vM;

    new-instance v4, Labcd/pM;

    invoke-direct {v4, p1}, Labcd/pM;-><init>([B)V

    invoke-direct {v3, v4}, Labcd/vM;-><init>(Labcd/qL;)V

    invoke-direct {v1, v2, v3}, Labcd/QM;-><init>(Labcd/zL;Labcd/HL;)V

    invoke-virtual {v1}, Labcd/QM;->v5()Labcd/zL;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7a
    return-object v0
.end method
