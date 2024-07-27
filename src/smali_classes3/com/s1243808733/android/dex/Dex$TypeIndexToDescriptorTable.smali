.class final Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorTable;
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
    name = "TypeIndexToDescriptorTable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private final this$0:Lcom/s1243808733/android/dex/Dex;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dex/Dex;)V
    .registers 2

    .line 747
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorTable;->this$0:Lcom/s1243808733/android/dex/Dex;

    return-void
.end method

.method static access$0(Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorTable;)Lcom/s1243808733/android/dex/Dex;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorTable;->this$0:Lcom/s1243808733/android/dex/Dex;

    return-object v0
.end method


# virtual methods
.method public bridge get(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorTable;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Ljava/lang/String;
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 742
    iget-object v0, p0, Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorTable;->this$0:Lcom/s1243808733/android/dex/Dex;

    invoke-static {v0}, Lcom/s1243808733/android/dex/Dex;->access$L1000007(Lcom/s1243808733/android/dex/Dex;)Lcom/s1243808733/android/dex/Dex$StringTable;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorTable;->this$0:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {v1, p1}, Lcom/s1243808733/android/dex/Dex;->descriptorIndexFromTypeIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dex/Dex$StringTable;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 746
    iget-object v0, p0, Lcom/s1243808733/android/dex/Dex$TypeIndexToDescriptorTable;->this$0:Lcom/s1243808733/android/dex/Dex;

    invoke-static {v0}, Lcom/s1243808733/android/dex/Dex;->access$L1000005(Lcom/s1243808733/android/dex/Dex;)Lcom/s1243808733/android/dex/TableOfContents;

    move-result-object v0

    iget-object v0, v0, Lcom/s1243808733/android/dex/TableOfContents;->typeIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    return v0
.end method
