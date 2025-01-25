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
        "Ljava/util/Comparator<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/android/dexmerger/ApkDexMerger;


# direct methods
.method private constructor <init>(Lcom/s1243808733/android/dexmerger/ApkDexMerger;)V
    .registers 2

    .line 175
    iput-object p1, p0, Lcom/s1243808733/android/dexmerger/ApkDexMerger$DexFileComparator;->this$0:Lcom/s1243808733/android/dexmerger/ApkDexMerger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/s1243808733/android/dexmerger/ApkDexMerger;Lcom/s1243808733/android/dexmerger/ApkDexMerger$DexFileComparator-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dexmerger/ApkDexMerger$DexFileComparator;-><init>(Lcom/s1243808733/android/dexmerger/ApkDexMerger;)V

    return-void
.end method

.method private getDexFilePosByName(Ljava/io/File;I)I
    .registers 5

    .line 188
    iget-object v0, p0, Lcom/s1243808733/android/dexmerger/ApkDexMerger$DexFileComparator;->this$0:Lcom/s1243808733/android/dexmerger/ApkDexMerger;

    invoke-static {v0, p1}, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->-$$Nest$misDexFileByName(Lcom/s1243808733/android/dexmerger/ApkDexMerger;Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_9

    return p2

    .line 189
    :cond_9
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    .line 191
    :try_start_d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 192
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_37

    .line 193
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_26
    .catchall {:try_start_d .. :try_end_26} :catchall_27

    return p1

    :catchall_27
    move-exception p1

    .line 196
    iget-object v0, p0, Lcom/s1243808733/android/dexmerger/ApkDexMerger$DexFileComparator;->this$0:Lcom/s1243808733/android/dexmerger/ApkDexMerger;

    invoke-static {v0}, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->-$$Nest$fgetmContext(Lcom/s1243808733/android/dexmerger/ApkDexMerger;)Lcom/s1243808733/android/dx/command/dexer/DxContext;

    move-result-object v0

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_37
    return p2
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .registers 4

    .line 179
    iget-object v0, p0, Lcom/s1243808733/android/dexmerger/ApkDexMerger$DexFileComparator;->this$0:Lcom/s1243808733/android/dexmerger/ApkDexMerger;

    invoke-static {v0, p1}, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->-$$Nest$misDexFileByName(Lcom/s1243808733/android/dexmerger/ApkDexMerger;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/s1243808733/android/dexmerger/ApkDexMerger$DexFileComparator;->this$0:Lcom/s1243808733/android/dexmerger/ApkDexMerger;

    invoke-static {v0, p2}, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->-$$Nest$misDexFileByName(Lcom/s1243808733/android/dexmerger/ApkDexMerger;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 180
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/s1243808733/android/dexmerger/ApkDexMerger$DexFileComparator;->getDexFilePosByName(Ljava/io/File;I)I

    move-result p1

    .line 181
    invoke-direct {p0, p2, v0}, Lcom/s1243808733/android/dexmerger/ApkDexMerger$DexFileComparator;->getDexFilePosByName(Ljava/io/File;I)I

    move-result p2

    sub-int/2addr p1, p2

    return p1

    .line 184
    :cond_1b
    invoke-virtual {p1, p2}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 175
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/s1243808733/android/dexmerger/ApkDexMerger$DexFileComparator;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result p1

    return p1
.end method
