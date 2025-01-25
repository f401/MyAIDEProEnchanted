.class public Labcd/Dw$e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Dw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# static fields
.field public static final j6:Labcd/Rw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LRw<",
            "Labcd/Dw$e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public DW:J

.field public EQ:Ljava/lang/String;

.field public FH:Ljava/lang/String;

.field public Hw:Ljava/lang/String;

.field public J0:Z

.field public J8:Z

.field public VH:Ljava/lang/String;

.field public Ws:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Labcd/Dw$e;",
            ">;"
        }
    .end annotation
.end field

.field public Zo:Ljava/lang/String;

.field public gn:Ljava/lang/String;

.field public tp:Ljava/lang/String;

.field public u7:Ljava/lang/String;

.field public v5:Z

.field public we:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Labcd/Ew;

    invoke-direct {v0}, Labcd/Ew;-><init>()V

    sput-object v0, Labcd/Dw$e;->j6:Labcd/Rw;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "bytes"

    invoke-static {p1, v0}, Labcd/Dw;->DW(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Labcd/Dw$e;->DW:J

    const-string v0, "hash"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Labcd/Dw$e;->FH:Ljava/lang/String;

    const-string v0, "icon"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Labcd/Dw$e;->Hw:Ljava/lang/String;

    const-string v0, "is_dir"

    invoke-static {p1, v0}, Labcd/Dw;->j6(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Labcd/Dw$e;->v5:Z

    const-string v0, "modified"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Labcd/Dw$e;->Zo:Ljava/lang/String;

    const-string v0, "client_mtime"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Labcd/Dw$e;->VH:Ljava/lang/String;

    const-string v0, "path"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Labcd/Dw$e;->gn:Ljava/lang/String;

    const-string v0, "root"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Labcd/Dw$e;->u7:Ljava/lang/String;

    const-string v0, "size"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Labcd/Dw$e;->tp:Ljava/lang/String;

    const-string v0, "mime_type"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Labcd/Dw$e;->EQ:Ljava/lang/String;

    const-string v0, "rev"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Labcd/Dw$e;->we:Ljava/lang/String;

    const-string v0, "thumb_exists"

    invoke-static {p1, v0}, Labcd/Dw;->j6(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Labcd/Dw$e;->J0:Z

    const-string v0, "is_deleted"

    invoke-static {p1, v0}, Labcd/Dw;->j6(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Labcd/Dw$e;->J8:Z

    const-string v0, "contents"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_b1

    instance-of v0, p1, Labcd/dL;

    if-eqz v0, :cond_b1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Labcd/Dw$e;->Ws:Ljava/util/List;

    check-cast p1, Labcd/dL;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_96
    :goto_96
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_96

    iget-object v1, p0, Labcd/Dw$e;->Ws:Ljava/util/List;

    new-instance v2, Labcd/Dw$e;

    check-cast v0, Ljava/util/Map;

    invoke-direct {v2, v0}, Labcd/Dw$e;-><init>(Ljava/util/Map;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_96

    :cond_b1
    const/4 p1, 0x0

    iput-object p1, p0, Labcd/Dw$e;->Ws:Ljava/util/List;

    :cond_b4
    return-void
.end method


# virtual methods
.method public j6()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Labcd/Dw$e;->gn:Ljava/lang/String;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    iget-object v1, p0, Labcd/Dw$e;->gn:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
