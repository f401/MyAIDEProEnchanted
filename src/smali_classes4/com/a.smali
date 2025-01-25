.class public Lcom/a;
.super Ljava/lang/Object;


# static fields
.field public static a:I

.field public static b:I

.field public static c:I

.field public static d:I

.field public static e:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x7f0a0008

    sput v0, Lcom/a;->a:I

    const v0, 0x7f080024

    sput v0, Lcom/a;->b:I

    const v0, 0x7f080025

    sput v0, Lcom/a;->c:I

    const v0, 0x7f080026

    sput v0, Lcom/a;->d:I

    const v0, 0x7f0e0004

    sput v0, Lcom/a;->e:I

    return-void
.end method

.method public static a(Ljava/io/InputStream;[B)I
    .registers 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xff

    if-ne v2, v3, :cond_d

    :cond_c
    :goto_c
    return v0

    :cond_d
    int-to-byte v3, v2

    aput-byte v3, p1, v0

    and-int/lit16 v0, v2, 0x80

    if-eqz v0, :cond_26

    move v0, v1

    :goto_15
    and-int/lit8 v1, v2, 0x40

    if-eqz v1, :cond_c

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    shl-int/lit8 v1, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_15

    :cond_26
    move v0, v1

    goto :goto_c
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/Reader;
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".jar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".class"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    :try_start_19
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    if-eqz v2, :cond_28

    invoke-static {v1, p1}, Lcom/a;->a(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/io/Reader;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_27} :catch_29

    move-result-object v0

    :cond_28
    :goto_28
    return-object v0

    :catch_29
    move-exception v1

    goto :goto_28
.end method

.method private static a(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/io/Reader;
    .registers 6

    const/4 v2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x6

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/c;

    invoke-direct {v1, p0}, Lcom/c;-><init>(Ljava/util/zip/ZipFile;)V

    sput-boolean v2, Lorg/c/a/a/c/c/a/b/a;->a:Z

    new-instance v2, Lorg/c/a/a/a/b/b;

    invoke-direct {v2}, Lorg/c/a/a/a/b/b;-><init>()V

    new-instance v3, Lorg/c/a/a/a;

    invoke-direct {v3}, Lorg/c/a/a/a;-><init>()V

    invoke-virtual {v3, v1, v2, v0}, Lorg/c/a/a/a;->a(Lorg/c/a/a/a/a/a;Lorg/c/a/a/a/b/a;Ljava/lang/String;)V

    new-instance v0, Ljava/io/StringReader;

    invoke-virtual {v2}, Lorg/c/a/a/a/b/b;->e()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/s1243808733/aide/util/AIDEUtils;->launcherPermissionEditor(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/Object;)V
    .registers 3

    const-string v0, "4455JKJH"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static a(Ljava/util/List;)V
    .registers 4

    const-string v0, "-F"

    invoke-interface {p0, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    :goto_9
    return-void

    :cond_a
    add-int/lit8 v0, v0, 0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "resources.ap_"

    const-string v2, "aapt_rules.txt"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-G"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9
.end method

.method public static a(Ljava/util/List;Ljava/lang/String;)V
    .registers 4

    invoke-static {p1}, Labcd/Vi1;->BT(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    const-string v0, "NDK_PROJECT_PATH=."

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "APP_BUILD_SCRIPT=src/main/jni/Android.mk"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "NDK_APP_OUT=src/main/obj"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "NDK_LIBS_OUT=src/main/jniLibs"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/io/File;

    const-string v1, "src/main/jni/Application.mk"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NDK_APPLICATION_MK="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "src/main/jni/Application.mk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3b
    const-string v0, "NATIVE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "/AndroidManifest.xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
