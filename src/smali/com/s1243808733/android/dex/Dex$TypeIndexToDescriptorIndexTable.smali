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
.field final this$0:Lcom/s1243808733/android/dex/Dex;


# direct methods
.method private constructor <init>(Lcom/s1243808733/android/dex/Dex;)V
    .locals 0

    .line 726
    iput-object p1, p0, Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorIndexTable;->this$0:Lcom/s1243808733/android/dex/Dex;

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorIndexTable-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorIndexTable;-><init>(Lcom/s1243808733/android/dex/Dex;)V

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Integer;
    .locals 1

    .line 730
    iget-object v0, p0, Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorIndexTable;->this$0:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dex/Dex;->descriptorIndexFromTypeIndex(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    .line 726
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorIndexTable;->get(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 734
    iget-object v0, p0, Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorIndexTable;->this$0:Lcom/s1243808733/android/dex/Dex;

    invoke-static {v0}, Lcom/s1243808733/android/dex/Dex;->-$$Nest$fgettableOfContents(Lcom/s1243808733/android/dex/Dex;)Lcom/s1243808733/android/dex/TableOfContents;

    move-result-object v0

    iget-object v0, v0, Lcom/s1243808733/android/dex/TableOfContents;->typeIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    return v0
.end method
