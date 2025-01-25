.class public Labcd/Fw$a;
.super Lorg/apache/http/entity/HttpEntityWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Fw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/Fw$a$a;
    }
.end annotation


# instance fields
.field private final DW:J

.field private final j6:Labcd/Fw;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpEntity;Labcd/Fw;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/apache/http/entity/HttpEntityWrapper;-><init>(Lorg/apache/http/HttpEntity;)V

    if-eqz p2, :cond_e

    iput-object p2, p0, Labcd/Fw$a;->j6:Labcd/Fw;

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide p1

    iput-wide p1, p0, Labcd/Fw$a;->DW:J

    return-void

    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'listener\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic DW(Labcd/Fw$a;)J
    .registers 3

    iget-wide v0, p0, Labcd/Fw$a;->DW:J

    return-wide v0
.end method

.method static synthetic j6(Labcd/Fw$a;)Labcd/Fw;
    .registers 1

    iget-object p0, p0, Labcd/Fw$a;->j6:Labcd/Fw;

    return-object p0
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .registers 4

    iget-object v0, p0, Lorg/apache/http/entity/HttpEntityWrapper;->wrappedEntity:Lorg/apache/http/HttpEntity;

    new-instance v1, Labcd/Fw$a$a;

    invoke-direct {v1, p0, p1}, Labcd/Fw$a$a;-><init>(Labcd/Fw$a;Ljava/io/OutputStream;)V

    invoke-interface {v0, v1}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method
