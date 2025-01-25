.class public Labcd/Pz;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/Oz;


# instance fields
.field private final DW:Ljava/lang/String;

.field private final FH:Ljava/lang/String;

.field private final j6:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lio/fabric/sdk/android/Kit;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lio/fabric/sdk/android/Kit;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2d

    invoke-virtual {p1}, Lio/fabric/sdk/android/Kit;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Labcd/Pz;->j6:Landroid/content/Context;

    invoke-virtual {p1}, Lio/fabric/sdk/android/Kit;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Labcd/Pz;->DW:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Android/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Labcd/Pz;->FH:Ljava/lang/String;

    return-void

    :cond_2d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot get directory before context has been set. Call Fabric.with() first"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public j6()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Labcd/Pz;->j6:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Labcd/Pz;->j6(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method j6(Ljava/io/File;)Ljava/io/File;
    .registers 4

    const-string v0, "Fabric"

    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1b

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_1b

    :cond_11
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object p1

    const-string v1, "Couldn\'t create file"

    invoke-interface {p1, v0, v1}, Lio/fabric/sdk/android/m;->j6(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25

    :cond_1b
    :goto_1b
    return-object p1

    :cond_1c
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object p1

    const-string v1, "Null File"

    invoke-interface {p1, v0, v1}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    :goto_25
    const/4 p1, 0x0

    return-object p1
.end method
