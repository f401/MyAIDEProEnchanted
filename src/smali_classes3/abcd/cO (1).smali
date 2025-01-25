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
    .registers 15

    iget-object v0, p0, Labcd/cO;->ei:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_100

    new-instance v0, Labcd/rL;

    invoke-direct {v0}, Labcd/rL;-><init>()V

    new-instance v1, Labcd/rL;

    invoke-direct {v1}, Labcd/rL;-><init>()V

    iget-object v2, p0, Labcd/dO;->vy:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    iget-object v2, p0, Labcd/dO;->gW:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_e4

    invoke-interface {p1}, Labcd/fO;->getContentType()Labcd/zL;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz p1, :cond_69

    if-eqz p2, :cond_32

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    goto :goto_33

    :cond_32
    move-object v2, v4

    :goto_33
    iget-object v5, p0, Labcd/dO;->BT:Ljava/util/List;

    invoke-static {v5, v2}, Labcd/gO;->j6(Ljava/util/Collection;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v5

    invoke-static {v5}, Labcd/gO;->j6(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v5

    :try_start_3d
    invoke-interface {p1, v5}, Labcd/YN;->j6(Ljava/io/OutputStream;)V

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_43} :catch_50

    if-eqz p2, :cond_69

    new-instance p2, Labcd/SL;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {p2, v2}, Labcd/SL;-><init>([B)V

    move-object v5, p2

    goto :goto_6a

    :catch_50
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "data processing exception: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Labcd/XN;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Labcd/XN;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :cond_69
    move-object v5, v4

    :goto_6a
    iget-object p2, p0, Labcd/dO;->BT:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_70
    :goto_70
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_b8

    iget-object p2, p0, Labcd/dO;->er:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-eqz p2, :cond_86

    iget-object p2, p0, Labcd/dO;->er:Ljava/util/List;

    invoke-static {p2}, Labcd/gO;->j6(Ljava/util/List;)Labcd/HL;

    move-result-object p2

    move-object v9, p2

    goto :goto_87

    :cond_86
    move-object v9, v4

    :goto_87
    iget-object p2, p0, Labcd/dO;->yS:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-eqz p2, :cond_95

    iget-object p2, p0, Labcd/dO;->yS:Ljava/util/List;

    invoke-static {p2}, Labcd/gO;->j6(Ljava/util/List;)Labcd/HL;

    move-result-object v4

    :cond_95
    move-object v10, v4

    new-instance v8, Labcd/UM;

    invoke-direct {v8, v3, v5}, Labcd/UM;-><init>(Labcd/zL;Labcd/qL;)V

    new-instance p2, Labcd/WM;

    new-instance v7, Labcd/vM;

    invoke-direct {v7, v0}, Labcd/vM;-><init>(Labcd/rL;)V

    new-instance v11, Labcd/vM;

    invoke-direct {v11, v1}, Labcd/vM;-><init>(Labcd/rL;)V

    move-object v6, p2

    invoke-direct/range {v6 .. v11}, Labcd/WM;-><init>(Labcd/HL;Labcd/UM;Labcd/HL;Labcd/HL;Labcd/HL;)V

    new-instance v0, Labcd/aO;

    new-instance v1, Labcd/UM;

    sget-object v2, Labcd/TM;->DW:Labcd/zL;

    invoke-direct {v1, v2, p2}, Labcd/UM;-><init>(Labcd/zL;Labcd/qL;)V

    invoke-direct {v0, p1, v1}, Labcd/aO;-><init>(Labcd/YN;Labcd/UM;)V

    return-object v0

    :cond_b8
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Labcd/kO;

    invoke-virtual {p2, v3}, Labcd/kO;->j6(Labcd/zL;)Labcd/YM;

    move-result-object v2

    invoke-virtual {v2}, Labcd/YM;->v5()Labcd/wN;

    move-result-object v7

    invoke-virtual {v0, v7}, Labcd/rL;->j6(Labcd/qL;)V

    invoke-virtual {v1, v2}, Labcd/rL;->j6(Labcd/qL;)V

    invoke-virtual {p2}, Labcd/kO;->j6()[B

    move-result-object p2

    if-eqz p2, :cond_70

    iget-object v7, p0, Labcd/dO;->vy:Ljava/util/Map;

    invoke-virtual {v2}, Labcd/YM;->v5()Labcd/wN;

    move-result-object v2

    invoke-virtual {v2}, Labcd/wN;->v5()Labcd/zL;

    move-result-object v2

    invoke-virtual {v2}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_70

    :cond_e4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/mO;

    sget-object v4, Labcd/eO;->j6:Labcd/eO;

    invoke-virtual {v3}, Labcd/mO;->j6()Labcd/wN;

    move-result-object v5

    invoke-virtual {v4, v5}, Labcd/eO;->j6(Labcd/wN;)Labcd/wN;

    move-result-object v4

    invoke-virtual {v0, v4}, Labcd/rL;->j6(Labcd/qL;)V

    invoke-virtual {v3}, Labcd/mO;->DW()Labcd/YM;

    move-result-object v3

    invoke-virtual {v1, v3}, Labcd/rL;->j6(Labcd/qL;)V

    goto/16 :goto_1d

    :cond_100
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "this method can only be used with SignerInfoGenerator"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_109

    :goto_108
    throw p1

    :goto_109
    goto :goto_108
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

    move-result-object p1

    return-object p1
.end method

.method public j6(Ljava/lang/String;Labcd/YN;ZLjava/security/Provider;Z)Labcd/aO;
    .registers 10

    if-nez p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_9

    const/4 p1, 0x0

    goto :goto_f

    :cond_9
    new-instance v0, Labcd/zL;

    invoke-direct {v0, p1}, Labcd/zL;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_f
    iget-object v0, p0, Labcd/cO;->ei:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_36

    iget-object p4, p0, Labcd/cO;->ei:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->clear()V

    if-eqz p2, :cond_2c

    new-instance p4, Labcd/bO;

    invoke-direct {p4, p0, p1, p2}, Labcd/bO;-><init>(Labcd/cO;Labcd/zL;Labcd/YN;)V

    invoke-virtual {p0, p4, p3}, Labcd/cO;->j6(Labcd/fO;Z)Labcd/aO;

    move-result-object p1

    return-object p1

    :cond_2c
    new-instance p2, Labcd/VN;

    invoke-direct {p2, p1}, Labcd/VN;-><init>(Labcd/zL;)V

    invoke-virtual {p0, p2, p3}, Labcd/cO;->j6(Labcd/fO;Z)Labcd/aO;

    move-result-object p1

    return-object p1

    :cond_36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/cO$a;

    :try_start_3c
    iget-object v2, p0, Labcd/dO;->BT:Ljava/util/List;

    iget-object v3, p0, Labcd/dO;->P8:Ljava/security/SecureRandom;

    invoke-virtual {v1, v3, p4, p5}, Labcd/cO$a;->j6(Ljava/security/SecureRandom;Ljava/security/Provider;Z)Labcd/kO;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_47
    .catch Labcd/BP; {:try_start_3c .. :try_end_47} :catch_5a
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_47} :catch_51
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_3c .. :try_end_47} :catch_48

    goto :goto_15

    :catch_48
    move-exception p1

    new-instance p2, Labcd/XN;

    const-string p3, "error creating sid."

    invoke-direct {p2, p3, p1}, Labcd/XN;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_51
    move-exception p1

    new-instance p2, Labcd/XN;

    const-string p3, "exception encoding attributes"

    invoke-direct {p2, p3, p1}, Labcd/XN;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_5a
    move-exception p1

    new-instance p2, Labcd/XN;

    const-string p3, "exception creating signerInf"

    invoke-direct {p2, p3, p1}, Labcd/XN;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_64

    :goto_63
    throw p2

    :goto_64
    goto :goto_63
.end method
