.class Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger$DexFileFilter;
.super Ljava/lang/Object;
.source "ApkDexMerger.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DexFileFilter"
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;


# direct methods
.method private constructor <init>(Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;)V
    .registers 2

    .line 261
    iput-object p1, p0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger$DexFileFilter;->this$0:Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger$DexFileFilter-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger$DexFileFilter;-><init>(Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;)V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 3

    .line 265
    iget-object v0, p0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger$DexFileFilter;->this$0:Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;

    invoke-static {v0, p1}, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->-$$Nest$misDexFileByName(Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;Ljava/io/File;)Z

    move-result p1

    return p1
.end method
