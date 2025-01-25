.class Lcom/bumptech/glide/load/engine/EngineKey;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/Key;


# static fields
.field private static final EMPTY_LOG_STRING:Ljava/lang/String; = ""


# instance fields
.field private final cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

.field private final decoder:Lcom/bumptech/glide/load/ResourceDecoder;

.field private final encoder:Lcom/bumptech/glide/load/ResourceEncoder;

.field private hashCode:I

.field private final height:I

.field private final id:Ljava/lang/String;

.field private originalKey:Lcom/bumptech/glide/load/Key;

.field private final signature:Lcom/bumptech/glide/load/Key;

.field private final sourceEncoder:Lcom/bumptech/glide/load/Encoder;

.field private stringKey:Ljava/lang/String;

.field private final transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

.field private final transformation:Lcom/bumptech/glide/load/Transformation;

.field private final width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/bumptech/glide/load/Key;IILcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/Transformation;Lcom/bumptech/glide/load/ResourceEncoder;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lcom/bumptech/glide/load/Encoder;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->signature:Lcom/bumptech/glide/load/Key;

    iput p3, p0, Lcom/bumptech/glide/load/engine/EngineKey;->width:I

    iput p4, p0, Lcom/bumptech/glide/load/engine/EngineKey;->height:I

    iput-object p5, p0, Lcom/bumptech/glide/load/engine/EngineKey;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    iput-object p6, p0, Lcom/bumptech/glide/load/engine/EngineKey;->decoder:Lcom/bumptech/glide/load/ResourceDecoder;

    iput-object p7, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transformation:Lcom/bumptech/glide/load/Transformation;

    iput-object p8, p0, Lcom/bumptech/glide/load/engine/EngineKey;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;

    iput-object p9, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    iput-object p10, p0, Lcom/bumptech/glide/load/engine/EngineKey;->sourceEncoder:Lcom/bumptech/glide/load/Encoder;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    :cond_11
    move v0, v1

    goto :goto_4

    :cond_13
    check-cast p1, Lcom/bumptech/glide/load/engine/EngineKey;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/bumptech/glide/load/engine/EngineKey;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    move v0, v1

    goto :goto_4

    :cond_21
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->signature:Lcom/bumptech/glide/load/Key;

    iget-object v3, p1, Lcom/bumptech/glide/load/engine/EngineKey;->signature:Lcom/bumptech/glide/load/Key;

    invoke-interface {v2, v3}, Lcom/bumptech/glide/load/Key;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    move v0, v1

    goto :goto_4

    :cond_2d
    iget v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->height:I

    iget v3, p1, Lcom/bumptech/glide/load/engine/EngineKey;->height:I

    if-eq v2, v3, :cond_35

    move v0, v1

    goto :goto_4

    :cond_35
    iget v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->width:I

    iget v3, p1, Lcom/bumptech/glide/load/engine/EngineKey;->width:I

    if-eq v2, v3, :cond_3d

    move v0, v1

    goto :goto_4

    :cond_3d
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transformation:Lcom/bumptech/glide/load/Transformation;

    if-nez v2, :cond_4c

    move v2, v0

    :goto_42
    iget-object v3, p1, Lcom/bumptech/glide/load/engine/EngineKey;->transformation:Lcom/bumptech/glide/load/Transformation;

    if-nez v3, :cond_4e

    move v3, v0

    :goto_47
    xor-int/2addr v2, v3

    if-eqz v2, :cond_50

    move v0, v1

    goto :goto_4

    :cond_4c
    move v2, v1

    goto :goto_42

    :cond_4e
    move v3, v1

    goto :goto_47

    :cond_50
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transformation:Lcom/bumptech/glide/load/Transformation;

    if-eqz v2, :cond_68

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transformation:Lcom/bumptech/glide/load/Transformation;

    invoke-interface {v2}, Lcom/bumptech/glide/load/Transformation;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/bumptech/glide/load/engine/EngineKey;->transformation:Lcom/bumptech/glide/load/Transformation;

    invoke-interface {v3}, Lcom/bumptech/glide/load/Transformation;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_68

    move v0, v1

    goto :goto_4

    :cond_68
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->decoder:Lcom/bumptech/glide/load/ResourceDecoder;

    if-nez v2, :cond_77

    move v2, v0

    :goto_6d
    iget-object v3, p1, Lcom/bumptech/glide/load/engine/EngineKey;->decoder:Lcom/bumptech/glide/load/ResourceDecoder;

    if-nez v3, :cond_79

    move v3, v0

    :goto_72
    xor-int/2addr v2, v3

    if-eqz v2, :cond_7b

    move v0, v1

    goto :goto_4

    :cond_77
    move v2, v1

    goto :goto_6d

    :cond_79
    move v3, v1

    goto :goto_72

    :cond_7b
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->decoder:Lcom/bumptech/glide/load/ResourceDecoder;

    if-eqz v2, :cond_94

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->decoder:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v2}, Lcom/bumptech/glide/load/ResourceDecoder;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/bumptech/glide/load/engine/EngineKey;->decoder:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v3}, Lcom/bumptech/glide/load/ResourceDecoder;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_94

    move v0, v1

    goto/16 :goto_4

    :cond_94
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    if-nez v2, :cond_a4

    move v2, v0

    :goto_99
    iget-object v3, p1, Lcom/bumptech/glide/load/engine/EngineKey;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    if-nez v3, :cond_a6

    move v3, v0

    :goto_9e
    xor-int/2addr v2, v3

    if-eqz v2, :cond_a8

    move v0, v1

    goto/16 :goto_4

    :cond_a4
    move v2, v1

    goto :goto_99

    :cond_a6
    move v3, v1

    goto :goto_9e

    :cond_a8
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    if-eqz v2, :cond_c1

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v2}, Lcom/bumptech/glide/load/ResourceDecoder;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/bumptech/glide/load/engine/EngineKey;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v3}, Lcom/bumptech/glide/load/ResourceDecoder;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c1

    move v0, v1

    goto/16 :goto_4

    :cond_c1
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;

    if-nez v2, :cond_d1

    move v2, v0

    :goto_c6
    iget-object v3, p1, Lcom/bumptech/glide/load/engine/EngineKey;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;

    if-nez v3, :cond_d3

    move v3, v0

    :goto_cb
    xor-int/2addr v2, v3

    if-eqz v2, :cond_d5

    move v0, v1

    goto/16 :goto_4

    :cond_d1
    move v2, v1

    goto :goto_c6

    :cond_d3
    move v3, v1

    goto :goto_cb

    :cond_d5
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;

    if-eqz v2, :cond_ee

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;

    invoke-interface {v2}, Lcom/bumptech/glide/load/ResourceEncoder;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/bumptech/glide/load/engine/EngineKey;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;

    invoke-interface {v3}, Lcom/bumptech/glide/load/ResourceEncoder;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ee

    move v0, v1

    goto/16 :goto_4

    :cond_ee
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    if-nez v2, :cond_fe

    move v2, v0

    :goto_f3
    iget-object v3, p1, Lcom/bumptech/glide/load/engine/EngineKey;->transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    if-nez v3, :cond_100

    move v3, v0

    :goto_f8
    xor-int/2addr v2, v3

    if-eqz v2, :cond_102

    move v0, v1

    goto/16 :goto_4

    :cond_fe
    move v2, v1

    goto :goto_f3

    :cond_100
    move v3, v1

    goto :goto_f8

    :cond_102
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    if-eqz v2, :cond_11b

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    invoke-interface {v2}, Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/bumptech/glide/load/engine/EngineKey;->transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    invoke-interface {v3}, Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11b

    move v0, v1

    goto/16 :goto_4

    :cond_11b
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->sourceEncoder:Lcom/bumptech/glide/load/Encoder;

    if-nez v2, :cond_12b

    move v2, v0

    :goto_120
    iget-object v3, p1, Lcom/bumptech/glide/load/engine/EngineKey;->sourceEncoder:Lcom/bumptech/glide/load/Encoder;

    if-nez v3, :cond_12d

    move v3, v0

    :goto_125
    xor-int/2addr v2, v3

    if-eqz v2, :cond_12f

    move v0, v1

    goto/16 :goto_4

    :cond_12b
    move v2, v1

    goto :goto_120

    :cond_12d
    move v3, v1

    goto :goto_125

    :cond_12f
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->sourceEncoder:Lcom/bumptech/glide/load/Encoder;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->sourceEncoder:Lcom/bumptech/glide/load/Encoder;

    invoke-interface {v2}, Lcom/bumptech/glide/load/Encoder;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/bumptech/glide/load/engine/EngineKey;->sourceEncoder:Lcom/bumptech/glide/load/Encoder;

    invoke-interface {v3}, Lcom/bumptech/glide/load/Encoder;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto/16 :goto_4
.end method

.method public getOriginalKey()Lcom/bumptech/glide/load/Key;
    .registers 4

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->originalKey:Lcom/bumptech/glide/load/Key;

    if-nez v0, :cond_f

    new-instance v0, Lcom/bumptech/glide/load/engine/OriginalKey;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->signature:Lcom/bumptech/glide/load/Key;

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/engine/OriginalKey;-><init>(Ljava/lang/String;Lcom/bumptech/glide/load/Key;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->originalKey:Lcom/bumptech/glide/load/Key;

    :cond_f
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->originalKey:Lcom/bumptech/glide/load/Key;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v1, 0x0

    iget v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    if-nez v0, :cond_aa

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    iget v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->signature:Lcom/bumptech/glide/load/Key;

    invoke-interface {v2}, Lcom/bumptech/glide/load/Key;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    iget v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->width:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    iget v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->height:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    iget v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    if-eqz v0, :cond_ad

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v0}, Lcom/bumptech/glide/load/ResourceDecoder;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3c
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v0, v2

    iput v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    iget v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->decoder:Lcom/bumptech/glide/load/ResourceDecoder;

    if-eqz v0, :cond_af

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->decoder:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v0}, Lcom/bumptech/glide/load/ResourceDecoder;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_51
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v0, v2

    iput v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    iget v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transformation:Lcom/bumptech/glide/load/Transformation;

    if-eqz v0, :cond_b1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transformation:Lcom/bumptech/glide/load/Transformation;

    invoke-interface {v0}, Lcom/bumptech/glide/load/Transformation;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_66
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v0, v2

    iput v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    iget v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;

    if-eqz v0, :cond_b3

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;

    invoke-interface {v0}, Lcom/bumptech/glide/load/ResourceEncoder;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_7b
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v0, v2

    iput v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    iget v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    if-eqz v0, :cond_b5

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    invoke-interface {v0}, Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_90
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v0, v2

    iput v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    iget v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->sourceEncoder:Lcom/bumptech/glide/load/Encoder;

    if-eqz v2, :cond_a5

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->sourceEncoder:Lcom/bumptech/glide/load/Encoder;

    invoke-interface {v1}, Lcom/bumptech/glide/load/Encoder;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_a5
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    :cond_aa
    iget v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    return v0

    :cond_ad
    move v0, v1

    goto :goto_3c

    :cond_af
    move v0, v1

    goto :goto_51

    :cond_b1
    move v0, v1

    goto :goto_66

    :cond_b3
    move v0, v1

    goto :goto_7b

    :cond_b5
    move v0, v1

    goto :goto_90
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const/16 v3, 0x2b

    const/16 v2, 0x27

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->stringKey:Ljava/lang/String;

    if-nez v0, :cond_e5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EngineKey{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->signature:Lcom/bumptech/glide/load/Key;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    if-eqz v0, :cond_e8

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v0}, Lcom/bumptech/glide/load/ResourceDecoder;->getId()Ljava/lang/String;

    move-result-object v0

    :goto_4f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->decoder:Lcom/bumptech/glide/load/ResourceDecoder;

    if-eqz v0, :cond_ec

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->decoder:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v0}, Lcom/bumptech/glide/load/ResourceDecoder;->getId()Ljava/lang/String;

    move-result-object v0

    :goto_69
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transformation:Lcom/bumptech/glide/load/Transformation;

    if-eqz v0, :cond_f0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transformation:Lcom/bumptech/glide/load/Transformation;

    invoke-interface {v0}, Lcom/bumptech/glide/load/Transformation;->getId()Ljava/lang/String;

    move-result-object v0

    :goto_83
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;

    if-eqz v0, :cond_f3

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;

    invoke-interface {v0}, Lcom/bumptech/glide/load/ResourceEncoder;->getId()Ljava/lang/String;

    move-result-object v0

    :goto_9d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    if-eqz v0, :cond_f6

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    invoke-interface {v0}, Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;->getId()Ljava/lang/String;

    move-result-object v0

    :goto_b7
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->sourceEncoder:Lcom/bumptech/glide/load/Encoder;

    if-eqz v0, :cond_f9

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->sourceEncoder:Lcom/bumptech/glide/load/Encoder;

    invoke-interface {v0}, Lcom/bumptech/glide/load/Encoder;->getId()Ljava/lang/String;

    move-result-object v0

    :goto_d1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->stringKey:Ljava/lang/String;

    :cond_e5
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->stringKey:Ljava/lang/String;

    return-object v0

    :cond_e8
    const-string v0, ""

    goto/16 :goto_4f

    :cond_ec
    const-string v0, ""

    goto/16 :goto_69

    :cond_f0
    const-string v0, ""

    goto :goto_83

    :cond_f3
    const-string v0, ""

    goto :goto_9d

    :cond_f6
    const-string v0, ""

    goto :goto_b7

    :cond_f9
    const-string v0, ""

    goto :goto_d1
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->width:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->height:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->signature:Lcom/bumptech/glide/load/Key;

    invoke-interface {v1, p1}, Lcom/bumptech/glide/load/Key;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->id:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    if-eqz v0, :cond_89

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v0}, Lcom/bumptech/glide/load/ResourceDecoder;->getId()Ljava/lang/String;

    move-result-object v0

    :goto_33
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->decoder:Lcom/bumptech/glide/load/ResourceDecoder;

    if-eqz v0, :cond_8c

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->decoder:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v0}, Lcom/bumptech/glide/load/ResourceDecoder;->getId()Ljava/lang/String;

    move-result-object v0

    :goto_46
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transformation:Lcom/bumptech/glide/load/Transformation;

    if-eqz v0, :cond_8f

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transformation:Lcom/bumptech/glide/load/Transformation;

    invoke-interface {v0}, Lcom/bumptech/glide/load/Transformation;->getId()Ljava/lang/String;

    move-result-object v0

    :goto_59
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;

    if-eqz v0, :cond_92

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;

    invoke-interface {v0}, Lcom/bumptech/glide/load/ResourceEncoder;->getId()Ljava/lang/String;

    move-result-object v0

    :goto_6c
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->sourceEncoder:Lcom/bumptech/glide/load/Encoder;

    if-eqz v0, :cond_95

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->sourceEncoder:Lcom/bumptech/glide/load/Encoder;

    invoke-interface {v0}, Lcom/bumptech/glide/load/Encoder;->getId()Ljava/lang/String;

    move-result-object v0

    :goto_7f
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    return-void

    :cond_89
    const-string v0, ""

    goto :goto_33

    :cond_8c
    const-string v0, ""

    goto :goto_46

    :cond_8f
    const-string v0, ""

    goto :goto_59

    :cond_92
    const-string v0, ""

    goto :goto_6c

    :cond_95
    const-string v0, ""

    goto :goto_7f
.end method
