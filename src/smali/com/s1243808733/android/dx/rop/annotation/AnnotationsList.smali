.class public final Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;
.super Lcom/s1243808733/android/dx/util/FixedSizeList;
.source "AnnotationsList.java"


# static fields
.field public static final EMPTY:Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;-><init>(I)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;->EMPTY:Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/util/FixedSizeList;-><init>(I)V

    return-void
.end method

.method public static combine(Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;)Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;
    .locals 5

    .line 41
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;->size()I

    move-result v1

    .line 43
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;->size()I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 47
    new-instance v2, Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;

    invoke-direct {v2, v1}, Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 50
    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;->get(I)Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    move-result-object v3

    .line 51
    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;->get(I)Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    move-result-object v4

    .line 52
    invoke-static {v3, v4}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->combine(Lcom/s1243808733/android/dx/rop/annotation/Annotations;Lcom/s1243808733/android/dx/rop/annotation/Annotations;)Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;->set(ILcom/s1243808733/android/dx/rop/annotation/Annotations;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;->setImmutable()V

    return-object v2

    .line 44
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "list1.size() != list2.size()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public get(I)Lcom/s1243808733/android/dx/rop/annotation/Annotations;
    .locals 1

    .line 77
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;->get0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    return-object v0
.end method

.method public set(ILcom/s1243808733/android/dx/rop/annotation/Annotations;)V
    .locals 0

    .line 88
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->throwIfMutable()V

    .line 89
    invoke-virtual {p0, p1, p2}, Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;->set0(ILjava/lang/Object;)V

    return-void
.end method
