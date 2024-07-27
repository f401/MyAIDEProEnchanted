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
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 460
    if-ne p0, p1, :cond_1

    .line 469
    :cond_0
    :goto_0
    return v0

    .line 463
    :cond_1
    instance-of v2, p1, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;

    if-nez v2, :cond_2

    move v0, v1

    .line 464
    goto :goto_0

    .line 467
    :cond_2
    check-cast p1, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;

    .line 469
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;->file:Ljava/io/File;

    if-nez v2, :cond_4

    iget-object v2, p1, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;->file:Ljava/io/File;

    if-nez v2, :cond_3

    :goto_1
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;->namespace:Ljava/lang/String;

    if-nez v2, :cond_5

    iget-object v2, p1, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;->namespace:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 470
    :goto_2
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;->url:Ljava/lang/String;

    if-nez v2, :cond_6

    iget-object v2, p1, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;->url:Ljava/lang/String;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 471
    goto :goto_0

    .line 469
    :cond_4
    iget-object v3, p1, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;->file:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p1, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;->namespace:Ljava/lang/String;

    .line 470
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p1, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;->url:Ljava/lang/String;

    .line 471
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
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

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 398
    :goto_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;->url:Ljava/lang/String;

    invoke-direct {p0, v1}, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;->isSet(Ljava/lang/String;)Z

    move-result v1

    .line 400
    if-nez v0, :cond_0

    if-eqz v1, :cond_3

    .line 403
    :cond_0
    if-eqz v0, :cond_1

    if-nez v1, :cond_4

    .line 406
    :cond_1
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;->url:Ljava/lang/String;

    .line 407
    if-eqz v0, :cond_6

    .line 408
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 413
    :try_start_0
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/util/FileUtils;->getFileURL(Ljava/io/File;)Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 419
    :goto_1
    return-object v0

    .line 397
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 401
    :cond_3
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
    :cond_4
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
    :catch_0
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
    :cond_5
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

    :cond_6
    move-object v0, v1

    goto :goto_1
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

    if-nez v0, :cond_0

    move v0, v1

    .line 483
    :goto_0
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;->file:Ljava/io/File;

    if-nez v2, :cond_1

    move v2, v1

    .line 484
    :goto_1
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;->url:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 486
    :goto_2
    mul-int/lit8 v0, v0, 0x1d

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1d

    add-int/2addr v0, v1

    return v0

    .line 482
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 483
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->hashCode()I

    move-result v2

    goto :goto_1

    .line 484
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2
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

    if-nez v0, :cond_0

    const-string v0, "(anonymous)"

    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;->url:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;->file:Ljava/io/File;

    if-nez v0, :cond_2

    move-object v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 496
    return-object v0

    .line 497
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;->url:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 498
    :cond_2
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

    goto :goto_1
.end method

.method public validateNamespace()V
    .registers 3

    .line 438
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    return-void

    .line 439
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "No namespace URI"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
