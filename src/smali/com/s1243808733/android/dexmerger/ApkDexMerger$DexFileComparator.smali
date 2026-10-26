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
.field final this$0:Lcom/s1243808733/android/dexmerger/ApkDexMerger;


# direct methods
.method private constructor <init>(Lcom/s1243808733/android/dexmerger/ApkDexMerger;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/s1243808733/android/dexmerger/ApkDexMerger$DexFileComparator;->this$0:Lcom/s1243808733/android/dexmerger/ApkDexMerger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/s1243808733/android/dexmerger/ApkDexMerger;Lcom/s1243808733/android/dexmerger/ApkDexMerger$DexFileComparator-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dexmerger/ApkDexMerger$DexFileComparator;-><init>(Lcom/s1243808733/android/dexmerger/ApkDexMerger;)V

    return-void
.end method

.method private getDexFilePosByName(Ljava/io/File;I)I
    .locals 3

    .line 188
    iget-object v0, p0, Lcom/s1243808733/android/dexmerger/ApkDexMerger$DexFileComparator;->this$0:Lcom/s1243808733/android/dexmerger/ApkDexMerger;

    invoke-static {v0, p1}, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->-$$Nest$misDexFileByName(Lcom/s1243808733/android/dexmerger/ApkDexMerger;Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 196
    :cond_0
    :goto_0
    return p2

    .line 189
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 191
    const/4 v1, 0x7

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

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
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result p2

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 196
    iget-object v1, p0, Lcom/s1243808733/android/dexmerger/ApkDexMerger$DexFileComparator;->this$0:Lcom/s1243808733/android/dexmerger/ApkDexMerger;

    invoke-static {v1}, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->-$$Nest$fgetmContext(Lcom/s1243808733/android/dexmerger/ApkDexMerger;)Lcom/s1243808733/android/dx/command/dexer/DxContext;

    move-result-object v1

    iget-object v1, v1, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .locals 2

    const/4 v1, 0x1

    .line 179
    iget-object v0, p0, Lcom/s1243808733/android/dexmerger/ApkDexMerger$DexFileComparator;->this$0:Lcom/s1243808733/android/dexmerger/ApkDexMerger;

    invoke-static {v0, p1}, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->-$$Nest$misDexFileByName(Lcom/s1243808733/android/dexmerger/ApkDexMerger;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/s1243808733/android/dexmerger/ApkDexMerger$DexFileComparator;->this$0:Lcom/s1243808733/android/dexmerger/ApkDexMerger;

    invoke-static {v0, p2}, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->-$$Nest$misDexFileByName(Lcom/s1243808733/android/dexmerger/ApkDexMerger;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-direct {p0, p1, v1}, Lcom/s1243808733/android/dexmerger/ApkDexMerger$DexFileComparator;->getDexFilePosByName(Ljava/io/File;I)I

    move-result v0

    .line 181
    invoke-direct {p0, p2, v1}, Lcom/s1243808733/android/dexmerger/ApkDexMerger$DexFileComparator;->getDexFilePosByName(Ljava/io/File;I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 184
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 175
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/s1243808733/android/dexmerger/ApkDexMerger$DexFileComparator;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method
