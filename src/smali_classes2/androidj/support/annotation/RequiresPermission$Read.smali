.class public interface abstract annotation Landroidj/support/annotation/RequiresPermission$Read;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Landroidj/support/annotation/RequiresPermission$Read;
        value = .subannotation Landroidj/support/annotation/RequiresPermission;
        .end subannotation
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/annotation/RequiresPermission;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Read"
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract value()Landroidj/support/annotation/RequiresPermission;
.end method
