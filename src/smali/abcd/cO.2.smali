.class public Labcd/cO;
.super Labcd/dO;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/cO$a;
    }
.end annotation


# instance fields
.field private ei:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Labcd/dO;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Labcd/cO;->ei:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public j6(Labcd/fO;Z)Labcd/aO;
    .registers 12

    const/4 v1, 0x0

    iget-object v0, p0, Labcd/cO;->ei:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v6, Labcd/rL;

    invoke-direct {v6}, Labcd/rL;-><init>()V

    new-instance v7, Labcd/rL;

    invoke-direct {v7}, Labcd/rL;-><init>()V

    iget-object v0, p0, Labcd/dO;->vy:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Labcd/dO;->gW:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {p1}, Labcd/fO;->getContentType()Labcd/zL;

    move-result-object v8

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_1
    iget-object v2, p0, Labcd/dO;->BT:Ljava/util/List;

    invoke-static {v2, v0}, Labcd/gO;->j6(Ljava/util/Collection;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v2

    invoke-static {v2}, Labcd/gO;->j6(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v2

    :try_start_0
    invoke-interface {p1, v2}, Labcd/YN;->j6(Ljava/io/OutputStream;)V

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_2

    new-instance v2, Labcd/SL;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v2, v0}, Labcd/SL;-><init>([B)V

    move-object v5, v2

    :goto_2
    iget-object v0, p0, Labcd/dO;->BT:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Labcd/dO;->er:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Labcd/dO;->er:Ljava/util/List;

    invoke-static {v0}, Labcd/gO;->j6(Ljava/util/List;)Labcd/HL;

    move-result-object v3

    :goto_4
    iget-object v0, p0, Labcd/dO;->yS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Labcd/dO;->yS:Ljava/util/List;

    invoke-static {v0}, Labcd/gO;->j6(Ljava/util/List;)Labcd/HL;

    move-result-object v4

    :goto_5
    new-instance v2, Labcd/UM;

    invoke-direct {v2, v8, v5}, Labcd/UM;-><init>(Labcd/zL;Labcd/qL;)V

    new-instance v0, Labcd/WM;

    new-instance v1, Labcd/vM;

    invoke-direct {v1, v6}, Labcd/vM;-><init>(Labcd/rL;)V

    new-instance v5, Labcd/vM;

    invoke-direct {v5, v7}, Labcd/vM;-><init>(Labcd/rL;)V

    invoke-direct/range {v0 .. v5}, Labcd/WM;-><init>(Labcd/HL;Labcd/UM;Labcd/HL;Labcd/HL;Labcd/HL;)V

    new-instance v1, Labcd/aO;

    new-instance v2, Labcd/UM;

    sget-object v3, Labcd/TM;->DW:Labcd/zL;

    invoke-direct {v2, v3, v0}, Labcd/UM;-><init>(Labcd/zL;Labcd/qL;)V

    invoke-direct {v1, p1, v2}, Labcd/aO;-><init>(Labcd/YN;Labcd/UM;)V

    return-object v1

    :cond_1
    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "data processing exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Labcd/XN;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Labcd/XN;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :cond_2
    move-object v5, v1

    goto :goto_2

    :cond_3
    move-object v3, v1

    goto :goto_4

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/kO;

    invoke-virtual {v0, v8}, Labcd/kO;->j6(Labcd/zL;)Labcd/YM;

    move-result-object v3

    invoke-virtual {v3}, Labcd/YM;->v5()Labcd/wN;

    move-result-object v4

    invoke-virtual {v6, v4}, Labcd/rL;->j6(Labcd/qL;)V

    invoke-virtual {v7, v3}, Labcd/rL;->j6(Labcd/qL;)V

    invoke-virtual {v0}, Labcd/kO;->j6()[B

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v4, p0, Labcd/dO;->vy:Ljava/util/Map;

    invoke-virtual {v3}, Labcd/YM;->v5()Labcd/wN;

    move-result-object v3

    invoke-virtual {v3}, Labcd/wN;->v5()Labcd/zL;

    move-result-object v3

    invoke-virtual {v3}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/mO;

    sget-object v3, Labcd/eO;->j6:Labcd/eO;

    invoke-virtual {v0}, Labcd/mO;->j6()Labcd/wN;

    move-result-object v4

    invoke-virtual {v3, v4}, Labcd/eO;->j6(Labcd/wN;)Labcd/wN;

    move-result-object v3

    invoke-virtual {v6, v3}, Labcd/rL;->j6(Labcd/qL;)V

    invoke-virtual {v0}, Labcd/mO;->DW()Labcd/YM;

    move-result-object v0

    invoke-virtual {v7, v0}, Labcd/rL;->j6(Labcd/qL;)V

    goto/16 :goto_0

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "this method can only be used with SignerInfoGenerator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move-object v4, v1

    goto/16 :goto_5
.end method

.method public j6(Ljava/lang/String;Labcd/YN;ZLjava/lang/String;Z)Labcd/aO;
    .registers 12

    invoke-static {p4}, Labcd/gO;->j6(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Labcd/cO;->j6(Ljava/lang/String;Labcd/YN;ZLjava/security/Provider;Z)Labcd/aO;

    move-result-object v0

    return-object v0
.end method

.method public j6(Ljava/lang/String;Labcd/YN;ZLjava/security/Provider;Z)Labcd/aO;
    .registers 11

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move-object v1, v0

    :goto_1
    iget-object v0, p0, Labcd/cO;->ei:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Labcd/cO;->ei:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p2, :cond_2

    new-instance v0, Labcd/bO;

    invoke-direct {v0, p0, v1, p2}, Labcd/bO;-><init>(Labcd/cO;Labcd/zL;Labcd/YN;)V

    invoke-virtual {p0, v0, p3}, Labcd/cO;->j6(Labcd/fO;Z)Labcd/aO;

    move-result-object v0

    :goto_3
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Labcd/zL;

    invoke-direct {v0, p1}, Labcd/zL;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_1

    :cond_2
    new-instance v0, Labcd/VN;

    invoke-direct {v0, v1}, Labcd/VN;-><init>(Labcd/zL;)V

    invoke-virtual {p0, v0, p3}, Labcd/cO;->j6(Labcd/fO;Z)Labcd/aO;

    move-result-object v0

    goto :goto_3

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/cO$a;

    :try_start_0
    iget-object v3, p0, Labcd/dO;->BT:Ljava/util/List;

    iget-object v4, p0, Labcd/dO;->P8:Ljava/security/SecureRandom;

    invoke-virtual {v0, v4, p4, p5}, Labcd/cO$a;->j6(Ljava/security/SecureRandom;Ljava/security/Provider;Z)Labcd/kO;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Labcd/BP; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v1, Labcd/XN;

    const-string v2, "exception creating signerInf"

    invoke-direct {v1, v2, v0}, Labcd/XN;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Labcd/XN;

    const-string v2, "error creating sid."

    invoke-direct {v1, v2, v0}, Labcd/XN;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Labcd/XN;

    const-string v2, "exception encoding attributes"

    invoke-direct {v1, v2, v0}, Labcd/XN;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method
