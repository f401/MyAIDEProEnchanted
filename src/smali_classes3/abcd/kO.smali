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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/wP;

    invoke-direct {v0}, Labcd/wP;-><init>()V

    iput-object v0, p0, Labcd/kO;->Zo:Labcd/yP;

    const/4 v1, 0x0

    iput-object v1, p0, Labcd/kO;->gn:[B

    iput-object p1, p0, Labcd/kO;->j6:Labcd/XM;

    iput-object p2, p0, Labcd/kO;->Hw:Labcd/vP;

    if-eqz p3, :cond_22

    invoke-interface {p2}, Labcd/vP;->DW()Labcd/wN;

    move-result-object p1

    invoke-interface {v0, p1}, Labcd/yP;->j6(Labcd/wN;)Labcd/wN;

    move-result-object p1

    invoke-interface {p3, p1}, Labcd/AP;->j6(Labcd/wN;)Labcd/zP;

    move-result-object p1

    iput-object p1, p0, Labcd/kO;->v5:Labcd/zP;

    goto :goto_24

    :cond_22
    iput-object v1, p0, Labcd/kO;->v5:Labcd/zP;

    :goto_24
    iput-object p5, p0, Labcd/kO;->DW:Labcd/WN;

    iput-object p6, p0, Labcd/kO;->FH:Labcd/WN;

    iput-object p4, p0, Labcd/kO;->VH:Labcd/_N;

    return-void
.end method

.method constructor <init>(Labcd/XM;Labcd/vP;Labcd/AP;Labcd/_N;Z)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/wP;

    invoke-direct {v0}, Labcd/wP;-><init>()V

    iput-object v0, p0, Labcd/kO;->Zo:Labcd/yP;

    const/4 v1, 0x0

    iput-object v1, p0, Labcd/kO;->gn:[B

    iput-object p1, p0, Labcd/kO;->j6:Labcd/XM;

    iput-object p2, p0, Labcd/kO;->Hw:Labcd/vP;

    if-eqz p3, :cond_22

    invoke-interface {p2}, Labcd/vP;->DW()Labcd/wN;

    move-result-object p1

    invoke-interface {v0, p1}, Labcd/yP;->j6(Labcd/wN;)Labcd/wN;

    move-result-object p1

    invoke-interface {p3, p1}, Labcd/AP;->j6(Labcd/wN;)Labcd/zP;

    move-result-object p1

    iput-object p1, p0, Labcd/kO;->v5:Labcd/zP;

    goto :goto_24

    :cond_22
    iput-object v1, p0, Labcd/kO;->v5:Labcd/zP;

    :goto_24
    if-eqz p5, :cond_29

    iput-object v1, p0, Labcd/kO;->DW:Labcd/WN;

    goto :goto_30

    :cond_29
    new-instance p1, Labcd/iO;

    invoke-direct {p1}, Labcd/iO;-><init>()V

    iput-object p1, p0, Labcd/kO;->DW:Labcd/WN;

    :goto_30
    iput-object v1, p0, Labcd/kO;->FH:Labcd/WN;

    iput-object p4, p0, Labcd/kO;->VH:Labcd/_N;

    return-void
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

    iget-object p1, p1, Labcd/kO;->VH:Labcd/_N;

    iput-object p1, p0, Labcd/kO;->VH:Labcd/_N;

    iput-object p2, p0, Labcd/kO;->DW:Labcd/WN;

    iput-object p3, p0, Labcd/kO;->FH:Labcd/WN;

    return-void
.end method

.method private j6(Labcd/RM;)Labcd/HL;
    .registers 3

    if-eqz p1, :cond_c

    new-instance v0, Labcd/vM;

    invoke-virtual {p1}, Labcd/RM;->j6()Labcd/rL;

    move-result-object p1

    invoke-direct {v0, p1}, Labcd/vM;-><init>(Labcd/rL;)V

    return-object v0

    :cond_c
    const/4 p1, 0x0

    return-object p1
.end method

.method private j6(Labcd/oM;Labcd/wN;[B)Ljava/util/Map;
    .registers 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_c

    const-string v1, "contentType"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    const-string p1, "digestAlgID"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "digest"

    invoke-virtual {p3}, [B->clone()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public DW()Ljava/io/OutputStream;
    .registers 4

    iget-object v0, p0, Labcd/kO;->v5:Labcd/zP;

    if-eqz v0, :cond_1d

    iget-object v1, p0, Labcd/kO;->DW:Labcd/WN;

    if-nez v1, :cond_18

    new-instance v1, Labcd/YP;

    invoke-interface {v0}, Labcd/zP;->j6()Ljava/io/OutputStream;

    move-result-object v0

    iget-object v2, p0, Labcd/kO;->Hw:Labcd/vP;

    invoke-interface {v2}, Labcd/vP;->j6()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Labcd/YP;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    return-object v1

    :cond_18
    invoke-interface {v0}, Labcd/zP;->j6()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0

    :cond_1d
    iget-object v0, p0, Labcd/kO;->Hw:Labcd/vP;

    invoke-interface {v0}, Labcd/vP;->j6()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public j6(Labcd/zL;)Labcd/YM;
    .registers 11

    :try_start_0
    iget-object v0, p0, Labcd/kO;->DW:Labcd/WN;

    const/4 v1, 0x0

    if-eqz v0, :cond_42

    iget-object v0, p0, Labcd/kO;->v5:Labcd/zP;

    invoke-interface {v0}, Labcd/zP;->DW()Labcd/wN;

    move-result-object v0

    iget-object v2, p0, Labcd/kO;->v5:Labcd/zP;

    invoke-interface {v2}, Labcd/zP;->FH()[B

    move-result-object v2

    iput-object v2, p0, Labcd/kO;->gn:[B

    iget-object v2, p0, Labcd/kO;->v5:Labcd/zP;

    invoke-interface {v2}, Labcd/zP;->DW()Labcd/wN;

    move-result-object v2

    iget-object v3, p0, Labcd/kO;->gn:[B

    invoke-direct {p0, p1, v2, v3}, Labcd/kO;->j6(Labcd/oM;Labcd/wN;[B)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Labcd/kO;->DW:Labcd/WN;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v3, v2}, Labcd/WN;->getAttributes(Ljava/util/Map;)Labcd/RM;

    move-result-object v2

    invoke-direct {p0, v2}, Labcd/kO;->j6(Labcd/RM;)Labcd/HL;

    move-result-object v2

    iget-object v3, p0, Labcd/kO;->Hw:Labcd/vP;

    invoke-interface {v3}, Labcd/vP;->j6()Ljava/io/OutputStream;

    move-result-object v3

    const-string v4, "DER"

    invoke-virtual {v2, v4}, Labcd/yL;->j6(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    move-object v4, v0

    move-object v5, v2

    goto :goto_63

    :cond_42
    iget-object v0, p0, Labcd/kO;->v5:Labcd/zP;

    if-eqz v0, :cond_53

    invoke-interface {v0}, Labcd/zP;->DW()Labcd/wN;

    move-result-object v0

    iget-object v2, p0, Labcd/kO;->v5:Labcd/zP;

    invoke-interface {v2}, Labcd/zP;->FH()[B

    move-result-object v2

    iput-object v2, p0, Labcd/kO;->gn:[B

    goto :goto_61

    :cond_53
    iget-object v0, p0, Labcd/kO;->Zo:Labcd/yP;

    iget-object v2, p0, Labcd/kO;->Hw:Labcd/vP;

    invoke-interface {v2}, Labcd/vP;->DW()Labcd/wN;

    move-result-object v2

    invoke-interface {v0, v2}, Labcd/yP;->j6(Labcd/wN;)Labcd/wN;

    move-result-object v0

    iput-object v1, p0, Labcd/kO;->gn:[B

    :goto_61
    move-object v4, v0

    move-object v5, v1

    :goto_63
    iget-object v0, p0, Labcd/kO;->Hw:Labcd/vP;

    invoke-interface {v0}, Labcd/vP;->FH()[B

    move-result-object v0

    iget-object v2, p0, Labcd/kO;->FH:Labcd/WN;

    if-eqz v2, :cond_8a

    iget-object v1, p0, Labcd/kO;->gn:[B

    invoke-direct {p0, p1, v4, v1}, Labcd/kO;->j6(Labcd/oM;Labcd/wN;[B)Ljava/util/Map;

    move-result-object p1

    const-string v1, "encryptedDigest"

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Labcd/kO;->FH:Labcd/WN;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v1, p1}, Labcd/WN;->getAttributes(Ljava/util/Map;)Labcd/RM;

    move-result-object p1

    invoke-direct {p0, p1}, Labcd/kO;->j6(Labcd/RM;)Labcd/HL;

    move-result-object v1

    :cond_8a
    move-object v8, v1

    iget-object p1, p0, Labcd/kO;->VH:Labcd/_N;

    iget-object v1, p0, Labcd/kO;->Hw:Labcd/vP;

    invoke-interface {v1}, Labcd/vP;->DW()Labcd/wN;

    move-result-object v1

    invoke-interface {p1, v1}, Labcd/_N;->j6(Labcd/wN;)Labcd/wN;

    move-result-object v6

    iget-object v3, p0, Labcd/kO;->j6:Labcd/XM;

    new-instance v7, Labcd/pM;

    invoke-direct {v7, v0}, Labcd/pM;-><init>([B)V

    new-instance p1, Labcd/YM;

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Labcd/YM;-><init>(Labcd/XM;Labcd/wN;Labcd/HL;Labcd/wN;Labcd/AL;Labcd/HL;)V
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a4} :catch_a5

    return-object p1

    :catch_a5
    move-exception p1

    new-instance v0, Labcd/XN;

    const-string v1, "encoding error."

    invoke-direct {v0, v1, p1}, Labcd/XN;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method j6(Labcd/SN;)V
    .registers 2

    iput-object p1, p0, Labcd/kO;->u7:Labcd/SN;

    return-void
.end method

.method public j6()[B
    .registers 2

    iget-object v0, p0, Labcd/kO;->gn:[B

    if-eqz v0, :cond_b

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method
