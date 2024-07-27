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
.field private final this$0:Lcom/s1243808733/android/dexmerger/ApkDexMerger;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dexmerger/ApkDexMerger;)V
    .registers 2

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/dexmerger/ApkDexMerger$DexFileFilter;->this$0:Lcom/s1243808733/android/dexmerger/ApkDexMerger;

    return-void
.end method

.method static access$0(Lcom/s1243808733/android/dexmerger/ApkDexMerger$DexFileFilter;)Lcom/s1243808733/android/dexmerger/ApkDexMerger;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dexmerger/ApkDexMerger$DexFileFilter;->this$0:Lcom/s1243808733/android/dexmerger/ApkDexMerger;

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/s1243808733/android/dexmerger/ApkDexMerger$DexFileFilter;->this$0:Lcom/s1243808733/android/dexmerger/ApkDexMerger;

    invoke-static {v0, p1}, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->access$1000006(Lcom/s1243808733/android/dexmerger/ApkDexMerger;Ljava/io/File;)Z

    move-result v0

    return v0
.end method
