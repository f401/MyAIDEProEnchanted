.class public Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;
.super Ljava/lang/Object;
.source "SchemaValidate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SchemaLocation"
.end annotation


# static fields
.field public static final ERROR_NO_FILE:Ljava/lang/String; = "File not found: "

.field public static final ERROR_NO_LOCATION:Ljava/lang/String; = "No file or URL supplied for the schema "

.field public static final ERROR_NO_URI:Ljava/lang/String; = "No namespace URI"

.field public static final ERROR_NO_URL_REPRESENTATION:Ljava/lang/String; = "Cannot make a URL of "

.field public static final ERROR_TWO_LOCATIONS:Ljava/lang/String; = "Both URL and File were given for schema "


# instance fields
.field private file:Ljava/io/File;

.field private namespace:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isSet(Ljava/lang/String;)Z
    .registers 3

    .line 449
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 460
    if-ne p0, p1, :cond_5

    .line 469
    :cond_4
    :goto_4
    return v0

    .line 463
    :cond_5
    instance-of v2, p1, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;

    if-nez v2, :cond_b

    move v0, v1

    .line 464
    goto :goto_4

    .line 467
    :cond_b
    check-cast p1, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;

    .line 469
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;->file:Ljava/io/File;

    if-nez v2, :cond_27

    iget-object v2, p1, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;->file:Ljava/io/File;

    if-nez v2, :cond_25

    :goto_15
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;->namespace:Ljava/lang/String;

    if-nez v2, :cond_30

    iget-object v2, p1, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;->namespace:Ljava/lang/String;

    if-nez v2, :cond_25

    .line 470
    :goto_1d
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;->url:Ljava/lang/String;

    if-nez v2, :cond_39

    iget-object v2, p1, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;->url:Ljava/lang/String;

    if-eqz v2, :cond_4

    :cond_25
    move v0, v1

    .line 471
    goto :goto_4

    .line 469
    :cond_27
    iget-object v3, p1, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;->file:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    goto :goto_15

    :cond_30
    iget-object v3, p1, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;->namespace:Ljava/lang/String;

    .line 470
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    goto :goto_1d

    :cond_39
    iget-object v3, p1, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;->url:Ljava/lang/String;

    .line 471
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    goto :goto_4
.end method

.method public getFile()Ljava/io/File;
    .registers 2

    .line 363
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;->file:Ljava/io/File;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .registers 2

    .line 347
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public getSchemaLocationURL()Ljava/lang/String;
    .registers 4

    .line 397
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;->file:Ljava/io/File;

    if-eqz v0, :cond_2e

    const/4 v0, 0x1

    .line 398
    :goto_5
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;->url:Ljava/lang/String;

    invoke-direct {p0, v1}, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;->isSet(Ljava/lang/String;)Z

    move-result v1

    .line 400
    if-nez v0, :cond_f

    if-eqz v1, :cond_30

    .line 403
    :cond_f
    if-eqz v0, :cond_13

    if-nez v1, :cond_49

    .line 406
    :cond_13
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;->url:Ljava/lang/String;

    .line 407
    if-eqz v0, :cond_95

    .line 408
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 413
    :try_start_1f
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/util/FileUtils;->getFileURL(Ljava/io/File;)Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_2c
    .catch Ljava/net/MalformedURLException; {:try_start_1f .. :try_end_2c} :catch_62

    move-result-object v0

    .line 419
    :goto_2d
    return-object v0

    .line 397
    :cond_2e
    const/4 v0, 0x0

    goto :goto_5

    .line 401
    :cond_30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No file or URL supplied for the schema "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;->namespace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 404
    :cond_49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Both URL and File were given for schema "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;->namespace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 414
    :catch_62
    move-exception v0

    .line 416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot make a URL of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;->file:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 409
    :cond_7c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_95
    move-object v0, v1

    goto :goto_2d
.end method

.method public getURIandLocation()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 429
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;->validateNamespace()V

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;->namespace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;->getSchemaLocationURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .line 380
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    const/4 v1, 0x0

    .line 482
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;->namespace:Ljava/lang/String;

    if-nez v0, :cond_16

    move v0, v1

    .line 483
    :goto_6
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;->file:Ljava/io/File;

    if-nez v2, :cond_1b

    move v2, v1

    .line 484
    :goto_b
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;->url:Ljava/lang/String;

    if-nez v3, :cond_20

    .line 486
    :goto_f
    mul-int/lit8 v0, v0, 0x1d

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1d

    add-int/2addr v0, v1

    return v0

    .line 482
    :cond_16
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_6

    .line 483
    :cond_1b
    invoke-virtual {v2}, Ljava/io/File;->hashCode()I

    move-result v2

    goto :goto_b

    .line 484
    :cond_20
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_f
.end method

.method public setFile(Ljava/io/File;)V
    .registers 2

    .line 372
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;->file:Ljava/io/File;

    .line 373
    return-void
.end method

.method public setNamespace(Ljava/lang/String;)V
    .registers 2

    .line 355
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;->namespace:Ljava/lang/String;

    .line 356
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 2

    .line 388
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;->url:Ljava/lang/String;

    .line 389
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 496
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;->namespace:Ljava/lang/String;

    if-nez v0, :cond_b

    const-string v0, "(anonymous)"

    :cond_b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;->url:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_26

    const-string v0, ""

    :goto_16
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;->file:Ljava/io/File;

    if-nez v0, :cond_3a

    move-object v0, v1

    :goto_1e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 496
    return-object v0

    .line 497
    :cond_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;->url:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    .line 498
    :cond_3a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1e
.end method

.method public validateNamespace()V
    .registers 3

    .line 438
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 441
    return-void

    .line 439
    :cond_b
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "No namespace URI"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
