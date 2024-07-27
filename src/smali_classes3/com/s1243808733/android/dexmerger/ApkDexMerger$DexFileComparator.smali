.class Lcom/s1243808733/android/dexmerger/ApkDexMerger$DexFileComparator;
.super Ljava/lang/Object;
.source "ApkDexMerger.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dexmerger/ApkDexMerger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DexFileComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private final this$0:Lcom/s1243808733/android/dexmerger/ApkDexMerger;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dexmerger/ApkDexMerger;)V
    .registers 2

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/dexmerger/ApkDexMerger$DexFileComparator;->this$0:Lcom/s1243808733/android/dexmerger/ApkDexMerger;

    return-void
.end method

.method static access$0(Lcom/s1243808733/android/dexmerger/ApkDexMerger$DexFileComparator;)Lcom/s1243808733/android/dexmerger/ApkDexMerger;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dexmerger/ApkDexMerger$DexFileComparator;->this$0:Lcom/s1243808733/android/dexmerger/ApkDexMerger;

    return-object v0
.end method

.method private getDexFilePosByName(Ljava/io/File;I)I
    .registers 7

    .line 188
    iget-object v0, p0, Lcom/s1243808733/android/dexmerger/ApkDexMerger$DexFileComparator;->this$0:Lcom/s1243808733/android/dexmerger/ApkDexMerger;

    invoke-static {v0, p1}, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->access$1000006(Lcom/s1243808733/android/dexmerger/ApkDexMerger;Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 198
    :cond_0
    :goto_0
    return p2

    .line 189
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 191
    :try_start_0
    const-string v1, "classes"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, ".dex"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    :catch_0
    move-exception v0

    .line 196
    iget-object v1, p0, Lcom/s1243808733/android/dexmerger/ApkDexMerger$DexFileComparator;->this$0:Lcom/s1243808733/android/dexmerger/ApkDexMerger;

    invoke-static {v1}, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->access$L1000000(Lcom/s1243808733/android/dexmerger/ApkDexMerger;)Lcom/s1243808733/android/dx/command/dexer/DxContext;

    move-result-object v1

    iget-object v1, v1, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v1, 0x1

    .line 179
    iget-object v0, p0, Lcom/s1243808733/android/dexmerger/ApkDexMerger$DexFileComparator;->this$0:Lcom/s1243808733/android/dexmerger/ApkDexMerger;

    invoke-static {v0, p1}, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->access$1000006(Lcom/s1243808733/android/dexmerger/ApkDexMerger;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/s1243808733/android/dexmerger/ApkDexMerger$DexFileComparator;->this$0:Lcom/s1243808733/android/dexmerger/ApkDexMerger;

    invoke-static {v0, p2}, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->access$1000006(Lcom/s1243808733/android/dexmerger/ApkDexMerger;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-direct {p0, p1, v1}, Lcom/s1243808733/android/dexmerger/ApkDexMerger$DexFileComparator;->getDexFilePosByName(Ljava/io/File;I)I

    move-result v0

    .line 181
    invoke-direct {p0, p2, v1}, Lcom/s1243808733/android/dexmerger/ApkDexMerger$DexFileComparator;->getDexFilePosByName(Ljava/io/File;I)I

    move-result v1

    .line 182
    sub-int/2addr v0, v1

    .line 184
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/s1243808733/android/dexmerger/ApkDexMerger$DexFileComparator;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method
