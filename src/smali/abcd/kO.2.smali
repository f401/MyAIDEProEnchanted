.class public Labcd/kO;
.super Ljava/lang/Object;


# instance fields
.field private final DW:Labcd/WN;

.field private final FH:Labcd/WN;

.field private final Hw:Labcd/vP;

.field private final VH:Labcd/_N;

.field private final Zo:Labcd/yP;

.field private gn:[B

.field private final j6:Labcd/XM;

.field private u7:Labcd/SN;

.field private final v5:Labcd/zP;


# direct methods
.method constructor <init>(Labcd/XM;Labcd/vP;Labcd/AP;Labcd/_N;)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Labcd/kO;-><init>(Labcd/XM;Labcd/vP;Labcd/AP;Labcd/_N;Z)V

    return-void
.end method

.method constructor <init>(Labcd/XM;Labcd/vP;Labcd/AP;Labcd/_N;Labcd/WN;Labcd/WN;)V
    .registers 9

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/wP;

    invoke-direct {v0}, Labcd/wP;-><init>()V

    iput-object v0, p0, Labcd/kO;->Zo:Labcd/yP;

    iput-object v1, p0, Labcd/kO;->gn:[B

    iput-object p1, p0, Labcd/kO;->j6:Labcd/XM;

    iput-object p2, p0, Labcd/kO;->Hw:Labcd/vP;

    if-eqz p3, :cond_0

    iget-object v0, p0, Labcd/kO;->Zo:Labcd/yP;

    invoke-interface {p2}, Labcd/vP;->DW()Labcd/wN;

    move-result-object v1

    invoke-interface {v0, v1}, Labcd/yP;->j6(Labcd/wN;)Labcd/wN;

    move-result-object v0

    invoke-interface {p3, v0}, Labcd/AP;->j6(Labcd/wN;)Labcd/zP;

    move-result-object v0

    iput-object v0, p0, Labcd/kO;->v5:Labcd/zP;

    :goto_0
    iput-object p5, p0, Labcd/kO;->DW:Labcd/WN;

    iput-object p6, p0, Labcd/kO;->FH:Labcd/WN;

    iput-object p4, p0, Labcd/kO;->VH:Labcd/_N;

    return-void

    :cond_0
    iput-object v1, p0, Labcd/kO;->v5:Labcd/zP;

    goto :goto_0
.end method

.method constructor <init>(Labcd/XM;Labcd/vP;Labcd/AP;Labcd/_N;Z)V
    .registers 9

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/wP;

    invoke-direct {v0}, Labcd/wP;-><init>()V

    iput-object v0, p0, Labcd/kO;->Zo:Labcd/yP;

    iput-object v2, p0, Labcd/kO;->gn:[B

    iput-object p1, p0, Labcd/kO;->j6:Labcd/XM;

    iput-object p2, p0, Labcd/kO;->Hw:Labcd/vP;

    if-eqz p3, :cond_0

    iget-object v0, p0, Labcd/kO;->Zo:Labcd/yP;

    invoke-interface {p2}, Labcd/vP;->DW()Labcd/wN;

    move-result-object v1

    invoke-interface {v0, v1}, Labcd/yP;->j6(Labcd/wN;)Labcd/wN;

    move-result-object v0

    invoke-interface {p3, v0}, Labcd/AP;->j6(Labcd/wN;)Labcd/zP;

    move-result-object v0

    iput-object v0, p0, Labcd/kO;->v5:Labcd/zP;

    :goto_0
    if-eqz p5, :cond_1

    iput-object v2, p0, Labcd/kO;->DW:Labcd/WN;

    iput-object v2, p0, Labcd/kO;->FH:Labcd/WN;

    :goto_1
    iput-object p4, p0, Labcd/kO;->VH:Labcd/_N;

    return-void

    :cond_0
    iput-object v2, p0, Labcd/kO;->v5:Labcd/zP;

    goto :goto_0

    :cond_1
    new-instance v0, Labcd/iO;

    invoke-direct {v0}, Labcd/iO;-><init>()V

    iput-object v0, p0, Labcd/kO;->DW:Labcd/WN;

    iput-object v2, p0, Labcd/kO;->FH:Labcd/WN;

    goto :goto_1
.end method

.method public constructor <init>(Labcd/kO;Labcd/WN;Labcd/WN;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/wP;

    invoke-direct {v0}, Labcd/wP;-><init>()V

    iput-object v0, p0, Labcd/kO;->Zo:Labcd/yP;

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/kO;->gn:[B

    iget-object v0, p1, Labcd/kO;->j6:Labcd/XM;

    iput-object v0, p0, Labcd/kO;->j6:Labcd/XM;

    iget-object v0, p1, Labcd/kO;->Hw:Labcd/vP;

    iput-object v0, p0, Labcd/kO;->Hw:Labcd/vP;

    iget-object v0, p1, Labcd/kO;->v5:Labcd/zP;

    iput-object v0, p0, Labcd/kO;->v5:Labcd/zP;

    iget-object v0, p1, Labcd/kO;->VH:Labcd/_N;

    iput-object v0, p0, Labcd/kO;->VH:Labcd/_N;

    iput-object p2, p0, Labcd/kO;->DW:Labcd/WN;

    iput-object p3, p0, Labcd/kO;->FH:Labcd/WN;

    return-void
.end method

.method private j6(Labcd/RM;)Labcd/HL;
    .registers 4

    if-eqz p1, :cond_0

    new-instance v0, Labcd/vM;

    invoke-virtual {p1}, Labcd/RM;->j6()Labcd/rL;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/vM;-><init>(Labcd/rL;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j6(Labcd/oM;Labcd/wN;[B)Ljava/util/Map;
    .registers 7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    const-string v1, "contentType"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v1, "digestAlgID"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "digest"

    invoke-virtual {p3}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public DW()Ljava/io/OutputStream;
    .registers 4

    iget-object v1, p0, Labcd/kO;->v5:Labcd/zP;

    if-eqz v1, :cond_1

    iget-object v0, p0, Labcd/kO;->DW:Labcd/WN;

    if-nez v0, :cond_0

    new-instance v0, Labcd/YP;

    invoke-interface {v1}, Labcd/zP;->j6()Ljava/io/OutputStream;

    move-result-object v1

    iget-object v2, p0, Labcd/kO;->Hw:Labcd/vP;

    invoke-interface {v2}, Labcd/vP;->j6()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Labcd/YP;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v1}, Labcd/zP;->j6()Ljava/io/OutputStream;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Labcd/kO;->Hw:Labcd/vP;

    invoke-interface {v0}, Labcd/vP;->j6()Ljava/io/OutputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public j6(Labcd/zL;)Labcd/YM;
    .registers 9

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Labcd/kO;->DW:Labcd/WN;

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/kO;->v5:Labcd/zP;

    invoke-interface {v0}, Labcd/zP;->DW()Labcd/wN;

    move-result-object v2

    iget-object v0, p0, Labcd/kO;->v5:Labcd/zP;

    invoke-interface {v0}, Labcd/zP;->FH()[B

    move-result-object v0

    iput-object v0, p0, Labcd/kO;->gn:[B

    iget-object v0, p0, Labcd/kO;->v5:Labcd/zP;

    invoke-interface {v0}, Labcd/zP;->DW()Labcd/wN;

    move-result-object v0

    iget-object v1, p0, Labcd/kO;->gn:[B

    invoke-direct {p0, p1, v0, v1}, Labcd/kO;->j6(Labcd/oM;Labcd/wN;[B)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Labcd/kO;->DW:Labcd/WN;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v0}, Labcd/WN;->getAttributes(Ljava/util/Map;)Labcd/RM;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/kO;->j6(Labcd/RM;)Labcd/HL;

    move-result-object v3

    iget-object v0, p0, Labcd/kO;->Hw:Labcd/vP;

    invoke-interface {v0}, Labcd/vP;->j6()Ljava/io/OutputStream;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {v3, v1}, Labcd/yL;->j6(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :goto_0
    iget-object v0, p0, Labcd/kO;->Hw:Labcd/vP;

    invoke-interface {v0}, Labcd/vP;->FH()[B

    move-result-object v0

    iget-object v1, p0, Labcd/kO;->FH:Labcd/WN;

    if-eqz v1, :cond_0

    iget-object v1, p0, Labcd/kO;->gn:[B

    invoke-direct {p0, p1, v2, v1}, Labcd/kO;->j6(Labcd/oM;Labcd/wN;[B)Ljava/util/Map;

    move-result-object v1

    const-string v4, "encryptedDigest"

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Labcd/kO;->FH:Labcd/WN;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v4, v1}, Labcd/WN;->getAttributes(Ljava/util/Map;)Labcd/RM;

    move-result-object v1

    invoke-direct {p0, v1}, Labcd/kO;->j6(Labcd/RM;)Labcd/HL;

    move-result-object v6

    :cond_0
    iget-object v1, p0, Labcd/kO;->VH:Labcd/_N;

    iget-object v4, p0, Labcd/kO;->Hw:Labcd/vP;

    invoke-interface {v4}, Labcd/vP;->DW()Labcd/wN;

    move-result-object v4

    invoke-interface {v1, v4}, Labcd/_N;->j6(Labcd/wN;)Labcd/wN;

    move-result-object v4

    iget-object v1, p0, Labcd/kO;->j6:Labcd/XM;

    new-instance v5, Labcd/pM;

    invoke-direct {v5, v0}, Labcd/pM;-><init>([B)V

    new-instance v0, Labcd/YM;

    invoke-direct/range {v0 .. v6}, Labcd/YM;-><init>(Labcd/XM;Labcd/wN;Labcd/HL;Labcd/wN;Labcd/AL;Labcd/HL;)V

    return-object v0

    :cond_1
    iget-object v0, p0, Labcd/kO;->v5:Labcd/zP;

    if-eqz v0, :cond_2

    iget-object v0, p0, Labcd/kO;->v5:Labcd/zP;

    invoke-interface {v0}, Labcd/zP;->DW()Labcd/wN;

    move-result-object v0

    iget-object v1, p0, Labcd/kO;->v5:Labcd/zP;

    invoke-interface {v1}, Labcd/zP;->FH()[B

    move-result-object v1

    iput-object v1, p0, Labcd/kO;->gn:[B

    :goto_1
    move-object v3, v6

    move-object v2, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Labcd/kO;->Zo:Labcd/yP;

    iget-object v1, p0, Labcd/kO;->Hw:Labcd/vP;

    invoke-interface {v1}, Labcd/vP;->DW()Labcd/wN;

    move-result-object v1

    invoke-interface {v0, v1}, Labcd/yP;->j6(Labcd/wN;)Labcd/wN;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Labcd/kO;->gn:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Labcd/XN;

    const-string v2, "encoding error."

    invoke-direct {v1, v2, v0}, Labcd/XN;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method j6(Labcd/SN;)V
    .registers 2

    iput-object p1, p0, Labcd/kO;->u7:Labcd/SN;

    return-void
.end method

.method public j6()[B
    .registers 2

    iget-object v0, p0, Labcd/kO;->gn:[B

    if-eqz v0, :cond_0

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
