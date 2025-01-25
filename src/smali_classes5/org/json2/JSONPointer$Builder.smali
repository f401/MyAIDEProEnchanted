.class public Lorg/json2/JSONPointer$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/json2/JSONPointer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final refTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/json2/JSONPointer$Builder;->refTokens:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public append(I)Lorg/json2/JSONPointer$Builder;
    .registers 4

    iget-object v0, p0, Lorg/json2/JSONPointer$Builder;->refTokens:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public append(Ljava/lang/String;)Lorg/json2/JSONPointer$Builder;
    .registers 4

    if-eqz p1, :cond_8

    iget-object v0, p0, Lorg/json2/JSONPointer$Builder;->refTokens:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "token cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public build()Lorg/json2/JSONPointer;
    .registers 3

    new-instance v0, Lorg/json2/JSONPointer;

    iget-object v1, p0, Lorg/json2/JSONPointer$Builder;->refTokens:Ljava/util/List;

    invoke-direct {v0, v1}, Lorg/json2/JSONPointer;-><init>(Ljava/util/List;)V

    return-object v0
.end method
