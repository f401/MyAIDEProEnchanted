.class Lcom/s1243808733/android/dexmerger/ApkDexMerger$DexFileFilter;
.super Ljava/lang/Object;
.source "ApkDexMerger.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dexmerger/ApkDexMerger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DexFileFilter"
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/android/dexmerger/ApkDexMerger;


# direct methods
.method private constructor <init>(Lcom/s1243808733/android/dexmerger/ApkDexMerger;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/s1243808733/android/dexmerger/ApkDexMerger$DexFileFilter;->this$0:Lcom/s1243808733/android/dexmerger/ApkDexMerger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/s1243808733/android/dexmerger/ApkDexMerger;Lcom/s1243808733/android/dexmerger/ApkDexMerger$DexFileFilter-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dexmerger/ApkDexMerger$DexFileFilter;-><init>(Lcom/s1243808733/android/dexmerger/ApkDexMerger;)V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/s1243808733/android/dexmerger/ApkDexMerger$DexFileFilter;->this$0:Lcom/s1243808733/android/dexmerger/ApkDexMerger;

    invoke-static {v0, p1}, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->-$$Nest$misDexFileByName(Lcom/s1243808733/android/dexmerger/ApkDexMerger;Ljava/io/File;)Z

    move-result v0

    return v0
.end method
