.class Lcom/s1243808733/android/dx/command/annotool/AnnotationLister$100000000;
.super Ljava/lang/Object;
.source "AnnotationLister.java"

# interfaces
.implements Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$Consumer;


# instance fields
.field private final this$0:Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister$100000000;->this$0:Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;

    return-void
.end method

.method static access$0(Lcom/s1243808733/android/dx/command/annotool/AnnotationLister$100000000;)Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister$100000000;->this$0:Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;

    return-object v0
.end method


# virtual methods
.method public onException(Ljava/lang/Exception;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 124
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public onProcessArchiveStart(Ljava/io/File;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method

.method public processFileBytes(Ljava/lang/String;J[B)Z
    .registers 11
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v5, 0x1

    .line 67
    const-string v0, ".class"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    :cond_0
    :goto_0
    return v5

    .line 71
    :cond_1
    new-instance v0, Lcom/s1243808733/android/dx/util/ByteArray;

    invoke-direct {v0, p4}, Lcom/s1243808733/android/dx/util/ByteArray;-><init>([B)V

    .line 72
    new-instance v2, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;

    invoke-direct {v2, v0, p1, v5}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;-><init>(Lcom/s1243808733/android/dx/util/ByteArray;Ljava/lang/String;Z)V

    .line 75
    sget-object v0, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->THE_ONE:Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;

    invoke-virtual {v2, v0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->setAttributeFactory(Lcom/s1243808733/android/dx/cf/direct/AttributeFactory;)V

    .line 76
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getAttributes()Lcom/s1243808733/android/dx/cf/iface/AttributeList;

    move-result-object v3

    .line 77
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getThisClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstType;->getClassType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 82
    const-string v1, "package-info"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 83
    const-string v0, "RuntimeInvisibleAnnotations"

    invoke-interface {v3, v0}, Lcom/s1243808733/android/dx/cf/iface/AttributeList;->findFirst(Ljava/lang/String;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v1

    .line 86
    :goto_1
    if-nez v1, :cond_2

    .line 91
    const-string v0, "RuntimeVisibleAnnotations"

    invoke-interface {v3, v0}, Lcom/s1243808733/android/dx/cf/iface/AttributeList;->findFirst(Ljava/lang/String;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v1

    .line 94
    :goto_2
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 95
    check-cast v0, Lcom/s1243808733/android/dx/cf/attrib/BaseAnnotations;

    .line 96
    iget-object v4, p0, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister$100000000;->this$0:Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;

    invoke-static {v4, v2, v0}, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;->access$1000006(Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;Lcom/s1243808733/android/dx/cf/attrib/BaseAnnotations;)V

    .line 94
    invoke-interface {v3, v1}, Lcom/s1243808733/android/dx/cf/iface/AttributeList;->findNext(Lcom/s1243808733/android/dx/cf/iface/Attribute;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v0, v1

    .line 87
    check-cast v0, Lcom/s1243808733/android/dx/cf/attrib/BaseAnnotations;

    .line 88
    iget-object v4, p0, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister$100000000;->this$0:Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;

    invoke-static {v4, v2, v0}, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;->access$1000006(Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;Lcom/s1243808733/android/dx/cf/attrib/BaseAnnotations;)V

    .line 86
    invoke-interface {v3, v1}, Lcom/s1243808733/android/dx/cf/iface/AttributeList;->findNext(Lcom/s1243808733/android/dx/cf/iface/Attribute;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v1

    goto :goto_1

    .line 98
    :cond_3
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister$100000000;->this$0:Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;

    invoke-static {v1, v0}, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;->access$1000009(Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister$100000000;->this$0:Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;

    invoke-static {v1, v0}, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;->access$1000010(Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 100
    :cond_4
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister$100000000;->this$0:Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;

    invoke-static {v0, v2}, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;->access$1000008(Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;)V

    goto :goto_0

    .line 102
    :cond_5
    const-string v0, "RuntimeInvisibleAnnotations"

    invoke-interface {v3, v0}, Lcom/s1243808733/android/dx/cf/iface/AttributeList;->findFirst(Ljava/lang/String;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v1

    .line 105
    :goto_3
    if-nez v1, :cond_6

    .line 110
    const-string v0, "RuntimeVisibleAnnotations"

    invoke-interface {v3, v0}, Lcom/s1243808733/android/dx/cf/iface/AttributeList;->findFirst(Ljava/lang/String;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v1

    .line 113
    :goto_4
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 114
    check-cast v0, Lcom/s1243808733/android/dx/cf/attrib/BaseAnnotations;

    .line 115
    iget-object v4, p0, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister$100000000;->this$0:Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;

    invoke-static {v4, v2, v0}, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;->access$1000005(Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;Lcom/s1243808733/android/dx/cf/attrib/BaseAnnotations;)V

    .line 113
    invoke-interface {v3, v1}, Lcom/s1243808733/android/dx/cf/iface/AttributeList;->findNext(Lcom/s1243808733/android/dx/cf/iface/Attribute;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v1

    goto :goto_4

    :cond_6
    move-object v0, v1

    .line 106
    check-cast v0, Lcom/s1243808733/android/dx/cf/attrib/BaseAnnotations;

    .line 107
    iget-object v4, p0, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister$100000000;->this$0:Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;

    invoke-static {v4, v2, v0}, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;->access$1000005(Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;Lcom/s1243808733/android/dx/cf/attrib/BaseAnnotations;)V

    .line 105
    invoke-interface {v3, v1}, Lcom/s1243808733/android/dx/cf/iface/AttributeList;->findNext(Lcom/s1243808733/android/dx/cf/iface/Attribute;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v1

    goto :goto_3
.end method
