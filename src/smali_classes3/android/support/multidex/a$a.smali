.class final Landroid/support/multidex/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/multidex/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/multidex/a$a$a;,
        Landroid/support/multidex/a$a$b;,
        Landroid/support/multidex/a$a$c;,
        Landroid/support/multidex/a$a$d;
    }
.end annotation


# static fields
.field private static final j6:I = 0x4


# instance fields
.field private final DW:Landroid/support/multidex/a$a$a;


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "dalvik.system.DexPathList$Element"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :try_start_9
    new-instance v1, Landroid/support/multidex/a$a$b;

    invoke-direct {v1, v0}, Landroid/support/multidex/a$a$b;-><init>(Ljava/lang/Class;)V
    :try_end_e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_e} :catch_f

    goto :goto_1c

    :catch_f
    move-exception v1

    :try_start_10
    new-instance v1, Landroid/support/multidex/a$a$c;

    invoke-direct {v1, v0}, Landroid/support/multidex/a$a$c;-><init>(Ljava/lang/Class;)V
    :try_end_15
    .catch Ljava/lang/NoSuchMethodException; {:try_start_10 .. :try_end_15} :catch_16

    goto :goto_1c

    :catch_16
    move-exception v1

    new-instance v1, Landroid/support/multidex/a$a$d;

    invoke-direct {v1, v0}, Landroid/support/multidex/a$a$d;-><init>(Ljava/lang/Class;)V

    :goto_1c
    iput-object v1, p0, Landroid/support/multidex/a$a;->DW:Landroid/support/multidex/a$a$a;

    return-void
.end method

.method private static j6(Ljava/io/File;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sget v3, Landroid/support/multidex/a$a;->j6:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".dex"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static j6(Ljava/lang/ClassLoader;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List<",
            "+",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pathList"

    invoke-static {p0, v0}, Landroid/support/multidex/a;->j6(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    new-instance v0, Landroid/support/multidex/a$a;

    invoke-direct {v0}, Landroid/support/multidex/a$a;-><init>()V

    invoke-direct {v0, p1}, Landroid/support/multidex/a$a;->j6(Ljava/util/List;)[Ljava/lang/Object;

    move-result-object p1

    :try_start_13
    const-string v0, "dexElements"

    invoke-static {p0, v0, p1}, Landroid/support/multidex/a;->j6(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_18
    .catch Ljava/lang/NoSuchFieldException; {:try_start_13 .. :try_end_18} :catch_19

    goto :goto_26

    :catch_19
    move-exception v0

    const-string v1, "MultiDex"

    const-string v2, "Failed find field \'dexElements\' attempting \'pathElements\'"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "pathElements"

    invoke-static {p0, v0, p1}, Landroid/support/multidex/a;->j6(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_26
    return-void
.end method

.method private j6(Ljava/util/List;)[Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/io/File;",
            ">;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v0, :cond_27

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    iget-object v5, p0, Landroid/support/multidex/a$a;->DW:Landroid/support/multidex/a$a$a;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Landroid/support/multidex/a$a;->j6(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Landroid/support/multidex/a$a$a;->j6(Ljava/io/File;Ldalvik/system/DexFile;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_27
    return-object v1
.end method
