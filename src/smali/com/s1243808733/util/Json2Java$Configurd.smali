.class public Lcom/s1243808733/util/Json2Java$Configurd;
.super Ljava/lang/Object;
.source "Json2Java.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/util/Json2Java;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Configurd"
.end annotation


# instance fields
.field private className:Ljava/lang/String;

.field private getters:Z

.field private imports:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private indentation:I

.field private packageName:Ljava/lang/String;

.field private publicField:Z

.field private setters:Z

.field private sortMethod:Z

.field private toString:Z

.field private useArray:Z

.field private useInteger:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    const/4 v0, 0x4

    iput v0, p0, Lcom/s1243808733/util/Json2Java$Configurd;->indentation:I

    .line 383
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/s1243808733/util/Json2Java$Configurd;->setters:Z

    .line 385
    iput-boolean v0, p0, Lcom/s1243808733/util/Json2Java$Configurd;->getters:Z

    .line 397
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/util/Json2Java$Configurd;->imports:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    const/4 v0, 0x4

    iput v0, p0, Lcom/s1243808733/util/Json2Java$Configurd;->indentation:I

    .line 383
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/s1243808733/util/Json2Java$Configurd;->setters:Z

    .line 385
    iput-boolean v0, p0, Lcom/s1243808733/util/Json2Java$Configurd;->getters:Z

    .line 397
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/util/Json2Java$Configurd;->imports:Ljava/util/Map;

    .line 402
    iput-object p1, p0, Lcom/s1243808733/util/Json2Java$Configurd;->packageName:Ljava/lang/String;

    .line 403
    iput-object p2, p0, Lcom/s1243808733/util/Json2Java$Configurd;->className:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addImport(Ljava/lang/String;)Lcom/s1243808733/util/Json2Java$Configurd;
    .registers 4

    .line 500
    invoke-virtual {p0}, Lcom/s1243808733/util/Json2Java$Configurd;->getImports()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    .line 438
    iget-object v0, p0, Lcom/s1243808733/util/Json2Java$Configurd;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getImports()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 496
    iget-object v0, p0, Lcom/s1243808733/util/Json2Java$Configurd;->imports:Ljava/util/Map;

    return-object v0
.end method

.method public getIndentation()I
    .registers 2

    .line 420
    iget v0, p0, Lcom/s1243808733/util/Json2Java$Configurd;->indentation:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 429
    iget-object v0, p0, Lcom/s1243808733/util/Json2Java$Configurd;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSpace()Ljava/lang/String;
    .registers 4

    .line 505
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 506
    :goto_6
    invoke-virtual {p0}, Lcom/s1243808733/util/Json2Java$Configurd;->getIndentation()I

    move-result v2

    if-ge v1, v2, :cond_14

    .line 507
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 509
    :cond_14
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isGetters()Z
    .registers 2

    .line 456
    iget-boolean v0, p0, Lcom/s1243808733/util/Json2Java$Configurd;->getters:Z

    return v0
.end method

.method public isPublicField()Z
    .registers 2

    .line 474
    iget-boolean v0, p0, Lcom/s1243808733/util/Json2Java$Configurd;->publicField:Z

    return v0
.end method

.method public isSetters()Z
    .registers 2

    .line 447
    iget-boolean v0, p0, Lcom/s1243808733/util/Json2Java$Configurd;->setters:Z

    return v0
.end method

.method public isSortMethod()Z
    .registers 2

    .line 465
    iget-boolean v0, p0, Lcom/s1243808733/util/Json2Java$Configurd;->sortMethod:Z

    return v0
.end method

.method public isToString()Z
    .registers 2

    .line 492
    iget-boolean v0, p0, Lcom/s1243808733/util/Json2Java$Configurd;->toString:Z

    return v0
.end method

.method public isUseArray()Z
    .registers 2

    .line 483
    iget-boolean v0, p0, Lcom/s1243808733/util/Json2Java$Configurd;->useArray:Z

    return v0
.end method

.method public isUseInteger()Z
    .registers 2

    .line 411
    iget-boolean v0, p0, Lcom/s1243808733/util/Json2Java$Configurd;->useInteger:Z

    return v0
.end method

.method public setClassName(Ljava/lang/String;)Lcom/s1243808733/util/Json2Java$Configurd;
    .registers 2

    .line 433
    iput-object p1, p0, Lcom/s1243808733/util/Json2Java$Configurd;->className:Ljava/lang/String;

    return-object p0
.end method

.method public setGetters(Z)Lcom/s1243808733/util/Json2Java$Configurd;
    .registers 2

    .line 451
    iput-boolean p1, p0, Lcom/s1243808733/util/Json2Java$Configurd;->getters:Z

    return-object p0
.end method

.method public setIndentation(I)Lcom/s1243808733/util/Json2Java$Configurd;
    .registers 2

    .line 415
    iput p1, p0, Lcom/s1243808733/util/Json2Java$Configurd;->indentation:I

    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/s1243808733/util/Json2Java$Configurd;
    .registers 2

    .line 424
    iput-object p1, p0, Lcom/s1243808733/util/Json2Java$Configurd;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public setPublicField(Z)Lcom/s1243808733/util/Json2Java$Configurd;
    .registers 2

    .line 469
    iput-boolean p1, p0, Lcom/s1243808733/util/Json2Java$Configurd;->publicField:Z

    return-object p0
.end method

.method public setSetters(Z)Lcom/s1243808733/util/Json2Java$Configurd;
    .registers 2

    .line 442
    iput-boolean p1, p0, Lcom/s1243808733/util/Json2Java$Configurd;->setters:Z

    return-object p0
.end method

.method public setSortMethod(Z)Lcom/s1243808733/util/Json2Java$Configurd;
    .registers 2

    .line 460
    iput-boolean p1, p0, Lcom/s1243808733/util/Json2Java$Configurd;->sortMethod:Z

    return-object p0
.end method

.method public setToString(Z)Lcom/s1243808733/util/Json2Java$Configurd;
    .registers 2

    .line 487
    iput-boolean p1, p0, Lcom/s1243808733/util/Json2Java$Configurd;->toString:Z

    return-object p0
.end method

.method public setUseArray(Z)Lcom/s1243808733/util/Json2Java$Configurd;
    .registers 2

    .line 478
    iput-boolean p1, p0, Lcom/s1243808733/util/Json2Java$Configurd;->useArray:Z

    return-object p0
.end method

.method public setUseInteger(Z)V
    .registers 2

    .line 407
    iput-boolean p1, p0, Lcom/s1243808733/util/Json2Java$Configurd;->useInteger:Z

    return-void
.end method
