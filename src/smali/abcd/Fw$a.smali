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
    .registers 5

    invoke-direct {p0, p1}, Lorg/apache/http/entity/HttpEntityWrapper;-><init>(Lorg/apache/http/HttpEntity;)V

    if-eqz p2, :cond_0

    iput-object p2, p0, Labcd/Fw$a;->j6:Labcd/Fw;

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    iput-wide v0, p0, Labcd/Fw$a;->DW:J

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'listener\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic DW(Labcd/Fw$a;)J
    .registers 3

    iget-wide v0, p0, Labcd/Fw$a;->DW:J

    return-wide v0
.end method

.method static synthetic j6(Labcd/Fw$a;)Labcd/Fw;
    .registers 2

    iget-object v0, p0, Labcd/Fw$a;->j6:Labcd/Fw;

    return-object v0
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
