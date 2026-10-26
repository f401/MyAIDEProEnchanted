.class final Lcom/s1243808733/android/dex/Dex$MethodIdTable;
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
    name = "MethodIdTable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Lcom/s1243808733/android/dex/MethodId;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/android/dex/Dex;


# direct methods
.method private constructor <init>(Lcom/s1243808733/android/dex/Dex;)V
    .locals 0

    .line 776
    iput-object p1, p0, Lcom/s1243808733/android/dex/Dex$MethodIdTable;->this$0:Lcom/s1243808733/android/dex/Dex;

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dex/Dex$MethodIdTable-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dex/Dex$MethodIdTable;-><init>(Lcom/s1243808733/android/dex/Dex;)V

    return-void
.end method


# virtual methods
.method public get(I)Lcom/s1243808733/android/dex/MethodId;
    .locals 3

    .line 779
    iget-object v0, p0, Lcom/s1243808733/android/dex/Dex$MethodIdTable;->this$0:Lcom/s1243808733/android/dex/Dex;

    invoke-static {v0}, Lcom/s1243808733/android/dex/Dex;->-$$Nest$fgettableOfContents(Lcom/s1243808733/android/dex/Dex;)Lcom/s1243808733/android/dex/TableOfContents;

    move-result-object v0

    iget-object v0, v0, Lcom/s1243808733/android/dex/TableOfContents;->methodIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    invoke-static {p1, v0}, Lcom/s1243808733/android/dex/Dex;->-$$Nest$smcheckBounds(II)V

    .line 780
    iget-object v0, p0, Lcom/s1243808733/android/dex/Dex$MethodIdTable;->this$0:Lcom/s1243808733/android/dex/Dex;

    invoke-static {v0}, Lcom/s1243808733/android/dex/Dex;->-$$Nest$fgettableOfContents(Lcom/s1243808733/android/dex/Dex;)Lcom/s1243808733/android/dex/TableOfContents;

    move-result-object v1

    iget-object v1, v1, Lcom/s1243808733/android/dex/TableOfContents;->methodIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget v1, v1, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    mul-int/lit8 v2, p1, 0x8

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dex/Dex;->open(I)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v0

    .line 781
    invoke-virtual {v0}, Lcom/s1243808733/android/dex/Dex$Section;->readMethodId()Lcom/s1243808733/android/dex/MethodId;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    .line 776
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dex/Dex$MethodIdTable;->get(I)Lcom/s1243808733/android/dex/MethodId;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 785
    iget-object v0, p0, Lcom/s1243808733/android/dex/Dex$MethodIdTable;->this$0:Lcom/s1243808733/android/dex/Dex;

    invoke-static {v0}, Lcom/s1243808733/android/dex/Dex;->-$$Nest$fgettableOfContents(Lcom/s1243808733/android/dex/Dex;)Lcom/s1243808733/android/dex/TableOfContents;

    move-result-object v0

    iget-object v0, v0, Lcom/s1243808733/android/dex/TableOfContents;->methodIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    return v0
.end method
