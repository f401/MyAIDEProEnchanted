.class final Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorIndexTable;
.super Ljava/util/AbstractList;
.source "Dex.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dex/Dex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TypeIndexToDescriptorIndexTable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private final this$0:Lcom/s1243808733/android/dex/Dex;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dex/Dex;)V
    .registers 2

    .line 735
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorIndexTable;->this$0:Lcom/s1243808733/android/dex/Dex;

    return-void
.end method

.method static access$0(Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorIndexTable;)Lcom/s1243808733/android/dex/Dex;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorIndexTable;->this$0:Lcom/s1243808733/android/dex/Dex;

    return-object v0
.end method


# virtual methods
.method public get(I)Ljava/lang/Integer;
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 730
    new-instance v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorIndexTable;->this$0:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {v1, p1}, Lcom/s1243808733/android/dex/Dex;->descriptorIndexFromTypeIndex(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    return-object v0
.end method

.method public bridge get(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorIndexTable;->get(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 734
    iget-object v0, p0, Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorIndexTable;->this$0:Lcom/s1243808733/android/dex/Dex;

    invoke-static {v0}, Lcom/s1243808733/android/dex/Dex;->access$L1000005(Lcom/s1243808733/android/dex/Dex;)Lcom/s1243808733/android/dex/TableOfContents;

    move-result-object v0

    iget-object v0, v0, Lcom/s1243808733/android/dex/TableOfContents;->typeIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    return v0
.end method
