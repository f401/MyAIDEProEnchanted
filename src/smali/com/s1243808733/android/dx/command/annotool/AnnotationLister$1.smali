.class Lcom/s1243808733/android/dx/command/annotool/AnnotationLister$1;
.super Ljava/lang/Object;
.source "AnnotationLister.java"

# interfaces
.implements Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;->process()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;)V
    .registers 2

    .line 64
    iput-object p1, p0, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister$1;->this$0:Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/Exception;)V
    .registers 3

    .line 124
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public onProcessArchiveStart(Ljava/io/File;)V
    .registers 2

    return-void
.end method

.method public processFileBytes(Ljava/lang/String;J[B)Z
    .registers 8

    .line 67
    const-string p2, ".class"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    const/4 p3, 0x1

    if-nez p2, :cond_a

    return p3

    .line 71
    :cond_a
    new-instance p2, Lcom/s1243808733/android/dx/util/ByteArray;

    invoke-direct {p2, p4}, Lcom/s1243808733/android/dx/util/ByteArray;-><init>([B)V

    .line 72
    new-instance p4, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;

    invoke-direct {p4, p2, p1, p3}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;-><init>(Lcom/s1243808733/android/dx/util/ByteArray;Ljava/lang/String;Z)V

    .line 75
    sget-object p1, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->THE_ONE:Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;

    invoke-virtual {p4, p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->setAttributeFactory(Lcom/s1243808733/android/dx/cf/direct/AttributeFactory;)V

    .line 76
    invoke-virtual {p4}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getAttributes()Lcom/s1243808733/android/dx/cf/iface/AttributeList;

    move-result-object p1

    .line 80
    invoke-virtual {p4}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getThisClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object p2

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/cst/CstType;->getClassType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p2

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/type/Type;->getClassName()Ljava/lang/String;

    move-result-object p2

    .line 82
    const-string v0, "package-info"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "RuntimeVisibleAnnotations"

    const-string v2, "RuntimeInvisibleAnnotations"

    if-eqz v0, :cond_5b

    .line 83
    invoke-interface {p1, v2}, Lcom/s1243808733/android/dx/cf/iface/AttributeList;->findFirst(Ljava/lang/String;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object p2

    :goto_39
    if-eqz p2, :cond_48

    .line 87
    move-object v0, p2

    check-cast v0, Lcom/s1243808733/android/dx/cf/attrib/BaseAnnotations;

    .line 88
    iget-object v2, p0, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister$1;->this$0:Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;

    invoke-static {v2, p4, v0}, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;->-$$Nest$mvisitPackageAnnotation(Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;Lcom/s1243808733/android/dx/cf/attrib/BaseAnnotations;)V

    .line 86
    invoke-interface {p1, p2}, Lcom/s1243808733/android/dx/cf/iface/AttributeList;->findNext(Lcom/s1243808733/android/dx/cf/iface/Attribute;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object p2

    goto :goto_39

    .line 91
    :cond_48
    invoke-interface {p1, v1}, Lcom/s1243808733/android/dx/cf/iface/AttributeList;->findFirst(Ljava/lang/String;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object p2

    :goto_4c
    if-eqz p2, :cond_97

    .line 95
    move-object v0, p2

    check-cast v0, Lcom/s1243808733/android/dx/cf/attrib/BaseAnnotations;

    .line 96
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister$1;->this$0:Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;

    invoke-static {v1, p4, v0}, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;->-$$Nest$mvisitPackageAnnotation(Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;Lcom/s1243808733/android/dx/cf/attrib/BaseAnnotations;)V

    .line 94
    invoke-interface {p1, p2}, Lcom/s1243808733/android/dx/cf/iface/AttributeList;->findNext(Lcom/s1243808733/android/dx/cf/iface/Attribute;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object p2

    goto :goto_4c

    .line 98
    :cond_5b
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister$1;->this$0:Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;

    invoke-static {v0, p2}, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;->-$$Nest$misMatchingInnerClass(Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_92

    iget-object v0, p0, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister$1;->this$0:Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;

    .line 99
    invoke-static {v0, p2}, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;->-$$Nest$misMatchingPackage(Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6c

    goto :goto_92

    .line 102
    :cond_6c
    invoke-interface {p1, v2}, Lcom/s1243808733/android/dx/cf/iface/AttributeList;->findFirst(Ljava/lang/String;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object p2

    :goto_70
    if-eqz p2, :cond_7f

    .line 106
    move-object v0, p2

    check-cast v0, Lcom/s1243808733/android/dx/cf/attrib/BaseAnnotations;

    .line 107
    iget-object v2, p0, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister$1;->this$0:Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;

    invoke-static {v2, p4, v0}, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;->-$$Nest$mvisitClassAnnotation(Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;Lcom/s1243808733/android/dx/cf/attrib/BaseAnnotations;)V

    .line 105
    invoke-interface {p1, p2}, Lcom/s1243808733/android/dx/cf/iface/AttributeList;->findNext(Lcom/s1243808733/android/dx/cf/iface/Attribute;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object p2

    goto :goto_70

    .line 110
    :cond_7f
    invoke-interface {p1, v1}, Lcom/s1243808733/android/dx/cf/iface/AttributeList;->findFirst(Ljava/lang/String;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object p2

    :goto_83
    if-eqz p2, :cond_97

    .line 114
    move-object v0, p2

    check-cast v0, Lcom/s1243808733/android/dx/cf/attrib/BaseAnnotations;

    .line 115
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister$1;->this$0:Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;

    invoke-static {v1, p4, v0}, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;->-$$Nest$mvisitClassAnnotation(Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;Lcom/s1243808733/android/dx/cf/attrib/BaseAnnotations;)V

    .line 113
    invoke-interface {p1, p2}, Lcom/s1243808733/android/dx/cf/iface/AttributeList;->findNext(Lcom/s1243808733/android/dx/cf/iface/Attribute;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object p2

    goto :goto_83

    .line 100
    :cond_92
    :goto_92
    iget-object p1, p0, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister$1;->this$0:Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;

    invoke-static {p1, p4}, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;->-$$Nest$mprintMatch(Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;)V

    :cond_97
    return p3
.end method
